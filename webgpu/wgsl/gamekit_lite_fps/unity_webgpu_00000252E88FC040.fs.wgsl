struct PGlobals {
  x_Color : vec4<f32>,
  x_Cutoff : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat3 : f32;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_25 : vec4<f32> = u_xlat0;
  let x_33 : vec4<f32> = x_28.x_Color;
  u_xlat0 = (x_25 * x_33);
  let x_40 : f32 = u_xlat0.w;
  let x_45 : f32 = vs_COLOR0.w;
  let x_50 : f32 = x_28.x_Cutoff;
  u_xlat3 = ((x_40 * x_45) + -(x_50));
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = vs_COLOR0;
  let x_58 : vec3<f32> = (vec3<f32>(x_54.x, x_54.y, x_54.z) * vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_58.x, x_58.y, x_58.z, x_59.w);
  let x_63 : vec4<f32> = u_xlat0;
  let x_64 : vec3<f32> = vec3<f32>(x_63.x, x_63.y, x_63.z);
  let x_65 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_64.x, x_64.y, x_64.z, x_65.w);
  let x_67 : f32 = u_xlat3;
  u_xlat0.x = (x_67 + 0.0001f);
  let x_76 : f32 = u_xlat0.x;
  u_xlatb0 = (x_76 < 0.0f);
  let x_79 : bool = u_xlatb0;
  if (((select(0i, 1i, x_79) * -1i) != 0i)) {
    discard;
  }
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

