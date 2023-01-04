struct PGlobals {
  x_AlphaParam : f32,
  x_SecondAlphaParam : f32,
}

@group(0) @binding(1) var x_SecondTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_SecondTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_SecondTex, sampler_SecondTex, x_23);
  u_xlat0 = x_24;
  let x_30 : f32 = u_xlat0.w;
  let x_38 : f32 = x_33.x_SecondAlphaParam;
  u_xlat6 = (x_30 * x_38);
  let x_41 : vec4<f32> = u_xlat0;
  let x_43 : f32 = u_xlat6;
  let x_45 : vec3<f32> = (vec3<f32>(x_41.x, x_41.y, x_41.z) * vec3<f32>(x_43, x_43, x_43));
  let x_46 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_45.x, x_45.y, x_45.z, x_46.w);
  let x_54 : vec2<f32> = vs_TEXCOORD0;
  let x_55 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_54);
  u_xlat1 = x_55;
  let x_57 : f32 = u_xlat1.w;
  let x_60 : f32 = x_33.x_AlphaParam;
  u_xlat6 = (x_57 * x_60);
  let x_64 : f32 = u_xlat6;
  let x_66 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec3<f32> = ((vec3<f32>(x_64, x_64, x_64) * vec3<f32>(x_66.x, x_66.y, x_66.z)) + vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_72 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_71.x, x_71.y, x_71.z, x_72.w);
  SV_Target0.w = 1.0f;
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

