struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
  x_Color : vec4<f32>,
  x_CameraFadeParams : vec4<f32>,
  x_DstBlend : i32,
}

var<private> vs_TEXCOORD0 : f32;

@group(1) @binding(0) var<uniform> x_16 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_135 : vec3<f32>;
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
  let x_64 : vec3<f32> = vs_TEXCOORD2;
  let x_66 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_64.x, x_64.y));
  u_xlat1 = x_66;
  let x_73 : vec2<f32> = vs_TEXCOORD1;
  let x_74 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_73);
  u_xlat2 = x_74;
  let x_75 : vec4<f32> = u_xlat1;
  let x_76 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_75 + -(x_76));
  let x_79 : vec3<f32> = vs_TEXCOORD2;
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_79.z, x_79.z, x_79.z, x_79.z) * x_81) + x_83);
  let x_85 : vec4<f32> = u_xlat1;
  let x_89 : vec4<f32> = x_16.x_Color;
  u_xlat1 = (x_85 * x_89);
  let x_93 : vec4<f32> = u_xlat1;
  let x_97 : vec4<f32> = vs_COLOR0;
  let x_102 : vec4<f32> = x_16.unity_FogColor;
  u_xlat3 = ((vec3<f32>(x_93.x, x_93.y, x_93.z) * vec3<f32>(x_97.x, x_97.y, x_97.z)) + -(vec3<f32>(x_102.x, x_102.y, x_102.z)));
  let x_106 : vec4<f32> = u_xlat1;
  let x_107 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_106 * x_107);
  let x_109 : f32 = u_xlat0;
  let x_111 : vec3<f32> = u_xlat3;
  let x_114 : vec4<f32> = x_16.unity_FogColor;
  u_xlat3 = ((vec3<f32>(x_109, x_109, x_109) * x_111) + vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : f32 = u_xlat0;
  let x_119 : vec4<f32> = u_xlat1;
  let x_121 : vec3<f32> = (vec3<f32>(x_117, x_117, x_117) * vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_130 : i32 = x_16.x_DstBlend;
  u_xlatb0 = (x_130 == 1i);
  let x_134 : bool = u_xlatb0;
  if (x_134) {
    let x_138 : vec4<f32> = u_xlat1;
    x_135 = vec3<f32>(x_138.x, x_138.y, x_138.z);
  } else {
    let x_141 : vec3<f32> = u_xlat3;
    x_135 = x_141;
  }
  let x_142 : vec3<f32> = x_135;
  let x_143 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_147 : f32 = vs_TEXCOORD3.z;
  let x_150 : f32 = x_16.x_CameraFadeParams.x;
  u_xlat0 = (x_147 + -(x_150));
  let x_153 : f32 = u_xlat0;
  let x_155 : f32 = x_16.x_CameraFadeParams.y;
  u_xlat0 = (x_153 * x_155);
  let x_157 : f32 = u_xlat0;
  u_xlat0 = clamp(x_157, 0.0f, 1.0f);
  let x_159 : f32 = u_xlat0;
  let x_162 : f32 = u_xlat1.w;
  SV_Target0.w = (x_159 * x_162);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : f32, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(2) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

