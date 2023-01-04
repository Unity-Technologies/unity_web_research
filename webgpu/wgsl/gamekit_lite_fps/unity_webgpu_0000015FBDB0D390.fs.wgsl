struct PGlobals {
  unity_OrthoParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  x_CameraMotionVectorsTexture_TexelSize : vec4<f32>,
  x_VelocityScale : f32,
  x_RcpMaxBlurRadius : f32,
}

var<private> u_xlat0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_13 : PGlobals;

var<private> u_xlat2 : vec2<f32>;

@group(0) @binding(2) var x_CameraMotionVectorsTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_CameraMotionVectorsTexture : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat1 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraDepthTexture : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = x_13.x_VelocityScale;
  u_xlat0.x = (x_18 * 0.5f);
  let x_25 : vec2<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_13.x_CameraMotionVectorsTexture_TexelSize;
  u_xlat0 = (vec2<f32>(x_25.x, x_25.x) * vec2<f32>(x_30.z, x_30.w));
  let x_46 : vec2<f32> = vs_TEXCOORD0;
  let x_47 : vec4<f32> = textureSample(x_CameraMotionVectorsTexture, sampler_CameraMotionVectorsTexture, x_46);
  u_xlat2 = vec2<f32>(x_47.x, x_47.y);
  let x_49 : vec2<f32> = u_xlat0;
  let x_50 : vec2<f32> = u_xlat2;
  u_xlat0 = (x_49 * x_50);
  let x_52 : vec2<f32> = u_xlat0;
  let x_53 : vec2<f32> = u_xlat0;
  u_xlat2.x = dot(x_52, x_53);
  let x_57 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_57);
  let x_61 : f32 = u_xlat2.x;
  let x_64 : f32 = x_13.x_RcpMaxBlurRadius;
  u_xlat2.x = (x_61 * x_64);
  let x_68 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_68, 1.0f);
  let x_72 : vec2<f32> = u_xlat0;
  let x_73 : vec2<f32> = u_xlat2;
  u_xlat0 = (x_72 / vec2<f32>(x_73.x, x_73.x));
  let x_76 : vec2<f32> = u_xlat0;
  let x_78 : f32 = x_13.x_RcpMaxBlurRadius;
  let x_80 : f32 = x_13.x_RcpMaxBlurRadius;
  let x_81 : vec2<f32> = vec2<f32>(x_78, x_80);
  u_xlat0 = ((x_76 * vec2<f32>(x_81.x, x_81.y)) + vec2<f32>(1.0f, 1.0f));
  let x_90 : vec2<f32> = u_xlat0;
  let x_92 : vec2<f32> = (x_90 * vec2<f32>(0.5f, 0.5f));
  let x_93 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_92.x, x_92.y, x_93.z, x_93.w);
  let x_98 : f32 = x_13.unity_OrthoParams.w;
  u_xlat0.x = (-(x_98) + 1.0f);
  let x_108 : vec2<f32> = vs_TEXCOORD0;
  let x_109 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_108);
  u_xlat1 = x_109.x;
  let x_111 : f32 = u_xlat1;
  let x_114 : f32 = x_13.x_ZBufferParams.x;
  u_xlat1 = (x_111 * x_114);
  let x_117 : f32 = u_xlat0.x;
  let x_118 : f32 = u_xlat1;
  let x_122 : f32 = x_13.x_ZBufferParams.y;
  u_xlat0.x = ((x_117 * x_118) + x_122);
  let x_126 : f32 = x_13.unity_OrthoParams.w;
  let x_128 : f32 = u_xlat1;
  u_xlat1 = ((-(x_126) * x_128) + 1.0f);
  let x_131 : f32 = u_xlat1;
  let x_133 : f32 = u_xlat0.x;
  SV_Target0.z = (x_131 / x_133);
  SV_Target0.w = 0.0f;
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

