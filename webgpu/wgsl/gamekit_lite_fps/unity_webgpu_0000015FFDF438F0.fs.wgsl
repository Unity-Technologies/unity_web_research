struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  x_FogColor : vec4<f32>,
  x_FogParams : vec3<f32>,
}

var<private> u_xlat0 : f32;

@group(0) @binding(0) var<uniform> x_13 : PGlobals;

var<private> u_xlat3 : f32;

@group(0) @binding(2) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : f32 = x_13.unity_OrthoParams.w;
  u_xlat0 = (-(x_20) + 1.0f);
  let x_38 : vec2<f32> = vs_TEXCOORD1;
  let x_39 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_38);
  u_xlat3 = x_39.x;
  let x_42 : f32 = u_xlat3;
  let x_45 : f32 = x_13.x_ZBufferParams.x;
  u_xlat3 = (x_42 * x_45);
  let x_47 : f32 = u_xlat0;
  let x_48 : f32 = u_xlat3;
  let x_52 : f32 = x_13.x_ZBufferParams.y;
  u_xlat0 = ((x_47 * x_48) + x_52);
  let x_55 : f32 = x_13.unity_OrthoParams.w;
  let x_57 : f32 = u_xlat3;
  u_xlat3 = ((-(x_55) * x_57) + 1.0f);
  let x_60 : f32 = u_xlat3;
  let x_61 : f32 = u_xlat0;
  u_xlat0 = (x_60 / x_61);
  let x_63 : f32 = u_xlat0;
  let x_67 : f32 = x_13.x_ProjectionParams.z;
  let x_70 : f32 = x_13.x_ProjectionParams.y;
  u_xlat3 = ((x_63 * x_67) + -(x_70));
  let x_76 : f32 = u_xlat0;
  u_xlatb0 = (x_76 < 0.999899983f);
  let x_79 : bool = u_xlatb0;
  u_xlat0 = select(0.0f, 1.0f, x_79);
  let x_82 : f32 = u_xlat3;
  let x_85 : f32 = x_13.x_FogParams.x;
  u_xlat3 = (x_82 * x_85);
  let x_87 : f32 = u_xlat3;
  let x_88 : f32 = u_xlat3;
  u_xlat3 = (x_87 * -(x_88));
  let x_91 : f32 = u_xlat3;
  u_xlat3 = exp2(x_91);
  let x_93 : f32 = u_xlat3;
  u_xlat3 = (-(x_93) + 1.0f);
  let x_96 : f32 = u_xlat0;
  let x_97 : f32 = u_xlat3;
  u_xlat0 = (x_96 * x_97);
  let x_106 : vec2<f32> = vs_TEXCOORD1;
  let x_107 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_106);
  u_xlat1 = x_107;
  let x_109 : vec4<f32> = u_xlat1;
  let x_114 : vec4<f32> = x_13.x_FogColor;
  u_xlat2 = (-(x_109) + x_114);
  let x_118 : f32 = u_xlat0;
  let x_120 : vec4<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat1;
  SV_Target0 = ((vec4<f32>(x_118, x_118, x_118, x_118) * x_120) + x_122);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

