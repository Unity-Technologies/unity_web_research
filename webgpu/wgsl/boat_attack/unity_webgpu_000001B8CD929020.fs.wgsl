struct PGlobals {
  x_Cutoff : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(1) var x_TranslucencyMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_TranslucencyMap : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat3 : f32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_30 : f32 = u_xlat0.w;
  let x_38 : f32 = x_33.x_Cutoff;
  u_xlat3 = (x_30 + -(x_38));
  let x_44 : vec4<f32> = u_xlat0;
  let x_45 : vec3<f32> = vec3<f32>(x_44.x, x_44.y, x_44.z);
  let x_46 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_45.x, x_45.y, x_45.z, x_46.w);
  let x_51 : f32 = u_xlat3;
  u_xlatb0 = (x_51 < 0.0f);
  let x_54 : bool = u_xlatb0;
  if (((select(0i, 1i, x_54) * -1i) != 0i)) {
    discard;
  }
  let x_68 : vec2<f32> = vs_TEXCOORD0;
  let x_69 : vec4<f32> = textureSample(x_TranslucencyMap, sampler_TranslucencyMap, x_68);
  u_xlat0.x = x_69.z;
  let x_75 : f32 = u_xlat0.x;
  SV_Target0.w = x_75;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

