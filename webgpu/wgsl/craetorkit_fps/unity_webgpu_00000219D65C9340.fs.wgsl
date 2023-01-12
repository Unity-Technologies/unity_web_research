struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
  x_Color : vec4<f32>,
  x_DstBlend : i32,
}

var<private> vs_TEXCOORD0 : f32;

@group(1) @binding(0) var<uniform> x_16 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_121 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : f32 = vs_TEXCOORD0;
  let x_22 : f32 = x_16.x_ProjectionParams.y;
  u_xlat0 = (x_11 / x_22);
  let x_24 : f32 = u_xlat0;
  u_xlat0 = (-(x_24) + 1.0f);
  let x_28 : f32 = u_xlat0;
  let x_31 : f32 = x_16.x_ProjectionParams.z;
  u_xlat0 = (x_28 * x_31);
  let x_33 : f32 = u_xlat0;
  u_xlat0 = max(x_33, 0.0f);
  let x_36 : f32 = u_xlat0;
  let x_40 : f32 = x_16.unity_FogParams.x;
  u_xlat0 = (x_36 * x_40);
  let x_42 : f32 = u_xlat0;
  let x_43 : f32 = u_xlat0;
  u_xlat0 = (x_42 * -(x_43));
  let x_46 : f32 = u_xlat0;
  u_xlat0 = exp2(x_46);
  let x_63 : vec2<f32> = vs_TEXCOORD1;
  let x_64 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_63);
  u_xlat1 = x_64;
  let x_65 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = x_16.x_Color;
  u_xlat1 = (x_65 * x_69);
  let x_74 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = vs_COLOR0;
  let x_83 : vec4<f32> = x_16.unity_FogColor;
  u_xlat2 = ((vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_78.x, x_78.y, x_78.z)) + -(vec3<f32>(x_83.x, x_83.y, x_83.z)));
  let x_87 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_87 * x_88);
  let x_90 : f32 = u_xlat0;
  let x_92 : vec3<f32> = u_xlat2;
  let x_95 : vec4<f32> = x_16.unity_FogColor;
  u_xlat2 = ((vec3<f32>(x_90, x_90, x_90) * x_92) + vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : f32 = u_xlat0;
  let x_100 : vec4<f32> = u_xlat1;
  let x_102 : vec3<f32> = (vec3<f32>(x_98, x_98, x_98) * vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_109 : f32 = u_xlat1.w;
  SV_Target0.w = x_109;
  let x_118 : i32 = x_16.x_DstBlend;
  u_xlatb0 = (x_118 == 1i);
  let x_120 : bool = u_xlatb0;
  if (x_120) {
    let x_124 : vec4<f32> = u_xlat1;
    x_121 = vec3<f32>(x_124.x, x_124.y, x_124.z);
  } else {
    let x_127 : vec3<f32> = u_xlat2;
    x_121 = x_127;
  }
  let x_128 : vec3<f32> = x_121;
  let x_129 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
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

