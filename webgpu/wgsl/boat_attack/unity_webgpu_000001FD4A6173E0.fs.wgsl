diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_ZBufferParams : vec4<f32>,
  /* @offset(16) */
  x_InvFade : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraDepthTexture : sampler;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = vs_TEXCOORD2;
  let x_15 : vec4<f32> = vs_TEXCOORD2;
  let x_17 : vec2<f32> = (vec2<f32>(x_13.x, x_13.y) / vec2<f32>(x_15.w, x_15.w));
  let x_18 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_17.x, x_17.y, x_18.z, x_18.w);
  let x_30 : vec4<f32> = u_xlat0;
  let x_32 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_30.x, x_30.y));
  u_xlat0.x = x_32.x;
  let x_46 : f32 = x_40.x_ZBufferParams.z;
  let x_48 : f32 = u_xlat0.x;
  let x_52 : f32 = x_40.x_ZBufferParams.w;
  u_xlat0.x = ((x_46 * x_48) + x_52);
  let x_57 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_57);
  let x_61 : f32 = u_xlat0.x;
  let x_64 : f32 = vs_TEXCOORD2.z;
  u_xlat0.x = (x_61 + -(x_64));
  let x_69 : f32 = u_xlat0.x;
  let x_72 : f32 = x_40.x_InvFade;
  u_xlat0.x = (x_69 * x_72);
  let x_76 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_76, 0.0f, 1.0f);
  let x_81 : f32 = u_xlat0.x;
  let x_84 : f32 = vs_COLOR0.w;
  u_xlat0.w = (x_81 * x_84);
  let x_88 : vec4<f32> = vs_COLOR0;
  let x_89 : vec3<f32> = vec3<f32>(x_88.x, x_88.y, x_88.z);
  let x_90 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_92 : vec4<f32> = u_xlat0;
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_92 + x_93);
  let x_103 : vec2<f32> = vs_TEXCOORD0;
  let x_104 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_103);
  u_xlat1 = x_104;
  let x_105 : vec4<f32> = u_xlat0;
  let x_106 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_105 * x_106);
  let x_111 : f32 = u_xlat0.w;
  SV_Target0.w = x_111;
  let x_115 : f32 = SV_Target0.w;
  SV_Target0.w = clamp(x_115, 0.0f, 1.0f);
  let x_118 : vec4<f32> = u_xlat0;
  let x_119 : vec3<f32> = vec3<f32>(x_118.x, x_118.y, x_118.z);
  let x_120 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec4<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


