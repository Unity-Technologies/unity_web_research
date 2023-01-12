struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD0 : f32;

@group(1) @binding(0) var<uniform> x_15 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : f32 = vs_TEXCOORD0;
  let x_22 : f32 = x_15.x_ProjectionParams.y;
  u_xlat0 = (x_11 / x_22);
  let x_24 : f32 = u_xlat0;
  u_xlat0 = (-(x_24) + 1.0f);
  let x_28 : f32 = u_xlat0;
  let x_31 : f32 = x_15.x_ProjectionParams.z;
  u_xlat0 = (x_28 * x_31);
  let x_33 : f32 = u_xlat0;
  u_xlat0 = max(x_33, 0.0f);
  let x_36 : f32 = u_xlat0;
  let x_40 : f32 = x_15.unity_FogParams.x;
  u_xlat0 = (x_36 * x_40);
  let x_42 : f32 = u_xlat0;
  let x_43 : f32 = u_xlat0;
  u_xlat0 = (x_42 * -(x_43));
  let x_46 : f32 = u_xlat0;
  u_xlat0 = exp2(x_46);
  let x_64 : vec2<f32> = vs_TEXCOORD1;
  let x_65 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_64);
  u_xlat1 = vec3<f32>(x_65.x, x_65.y, x_65.z);
  let x_67 : vec3<f32> = u_xlat1;
  let x_71 : vec4<f32> = x_15.x_Color;
  u_xlat1 = (x_67 * vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_74 : vec3<f32> = u_xlat1;
  let x_77 : vec4<f32> = vs_COLOR0;
  let x_82 : vec4<f32> = x_15.unity_FogColor;
  u_xlat1 = ((x_74 * vec3<f32>(x_77.x, x_77.y, x_77.z)) + -(vec3<f32>(x_82.x, x_82.y, x_82.z)));
  let x_88 : f32 = u_xlat0;
  let x_90 : vec3<f32> = u_xlat1;
  let x_93 : vec4<f32> = x_15.unity_FogColor;
  let x_95 : vec3<f32> = ((vec3<f32>(x_88, x_88, x_88) * x_90) + vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_96 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : f32, @location(2) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

