struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  x_FogParams : vec3<f32>,
  @size(4)
  padding : u32,
  x_AOColor : vec3<f32>,
}

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(1) var x_MSVOcclusionTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_MSVOcclusionTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat1 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : f32 = x_13.unity_OrthoParams.w;
  u_xlat0 = (-(x_20) + 1.0f);
  let x_38 : vec2<f32> = vs_TEXCOORD1;
  let x_39 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_38);
  u_xlat1 = x_39.x;
  let x_42 : f32 = u_xlat1;
  let x_45 : f32 = x_13.x_ZBufferParams.x;
  u_xlat1 = (x_42 * x_45);
  let x_47 : f32 = u_xlat0;
  let x_48 : f32 = u_xlat1;
  let x_52 : f32 = x_13.x_ZBufferParams.y;
  u_xlat0 = ((x_47 * x_48) + x_52);
  let x_55 : f32 = x_13.unity_OrthoParams.w;
  let x_57 : f32 = u_xlat1;
  u_xlat1 = ((-(x_55) * x_57) + 1.0f);
  let x_60 : f32 = u_xlat1;
  let x_61 : f32 = u_xlat0;
  u_xlat0 = (x_60 / x_61);
  let x_63 : f32 = u_xlat0;
  let x_67 : f32 = x_13.x_ProjectionParams.z;
  let x_70 : f32 = x_13.x_ProjectionParams.y;
  u_xlat0 = ((x_63 * x_67) + -(x_70));
  let x_73 : f32 = u_xlat0;
  let x_76 : f32 = x_13.x_FogParams.x;
  u_xlat0 = (x_73 * x_76);
  let x_78 : f32 = u_xlat0;
  let x_79 : f32 = u_xlat0;
  u_xlat0 = (x_78 * -(x_79));
  let x_82 : f32 = u_xlat0;
  u_xlat0 = exp2(x_82);
  let x_89 : vec2<f32> = vs_TEXCOORD1;
  let x_90 : vec4<f32> = textureSample(x_MSVOcclusionTexture, sampler_MSVOcclusionTexture, x_89);
  u_xlat1 = x_90.x;
  let x_92 : f32 = u_xlat1;
  u_xlat1 = (-(x_92) + 1.0f);
  let x_95 : f32 = u_xlat0;
  let x_96 : f32 = u_xlat1;
  u_xlat0 = (x_95 * x_96);
  let x_100 : f32 = u_xlat0;
  let x_105 : vec3<f32> = x_13.x_AOColor;
  let x_106 : vec3<f32> = (vec3<f32>(x_100, x_100, x_100) * x_105);
  let x_107 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  SV_Target0.w = 0.0f;
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

