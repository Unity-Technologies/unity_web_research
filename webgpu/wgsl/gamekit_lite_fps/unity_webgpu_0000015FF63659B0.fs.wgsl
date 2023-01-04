struct PGlobals {
  x_ZBufferParams : vec4<f32>,
  unity_WorldToCamera : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_CameraNormalsTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_CameraNormalsTexture : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_46 : PGlobals;

var<private> u_xlat4 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraDepthTexture : sampler;

var<private> u_xlatb3 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_CameraNormalsTexture, sampler_CameraNormalsTexture, x_23);
  let x_26 : vec3<f32> = vec3<f32>(x_24.x, x_24.y, x_24.z);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_26.z, x_27.w);
  let x_29 : vec4<f32> = u_xlat0;
  let x_36 : vec3<f32> = ((vec3<f32>(x_29.x, x_29.y, x_29.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  let x_41 : vec4<f32> = u_xlat0;
  let x_51 : vec4<f32> = x_46.unity_WorldToCamera[1i];
  u_xlat1 = (vec3<f32>(x_41.y, x_41.y, x_41.y) * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_56 : vec4<f32> = x_46.unity_WorldToCamera[0i];
  let x_58 : vec4<f32> = u_xlat0;
  let x_61 : vec3<f32> = u_xlat1;
  let x_62 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.x, x_58.x)) + x_61);
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_62.x, x_62.y, x_63.z, x_62.z);
  let x_67 : vec4<f32> = x_46.unity_WorldToCamera[2i];
  let x_69 : vec4<f32> = u_xlat0;
  let x_72 : vec4<f32> = u_xlat0;
  let x_74 : vec3<f32> = ((vec3<f32>(x_67.x, x_67.y, x_67.z) * vec3<f32>(x_69.z, x_69.z, x_69.z)) + vec3<f32>(x_72.x, x_72.y, x_72.w));
  let x_75 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75.w);
  let x_82 : f32 = u_xlat0.z;
  u_xlat4 = (-(x_82) + 1.0f);
  let x_86 : vec4<f32> = u_xlat0;
  let x_88 : f32 = u_xlat4;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.x, x_86.y) / vec2<f32>(x_88, x_88));
  let x_91 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat0;
  let x_100 : vec2<f32> = ((vec2<f32>(x_93.x, x_93.y) * vec2<f32>(0.281262308f, 0.281262308f)) + vec2<f32>(0.5f, 0.5f));
  let x_101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_101.w);
  let x_108 : vec2<f32> = vs_TEXCOORD0;
  let x_109 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_108);
  u_xlat1.x = x_109.x;
  let x_115 : f32 = x_46.x_ZBufferParams.x;
  let x_117 : f32 = u_xlat1.x;
  let x_121 : f32 = x_46.x_ZBufferParams.y;
  u_xlat1.x = ((x_115 * x_117) + x_121);
  let x_125 : f32 = u_xlat1.x;
  u_xlat1.x = (1.0f / x_125);
  let x_132 : f32 = u_xlat1.x;
  u_xlatb3 = (x_132 < 0.999984622f);
  let x_135 : vec3<f32> = u_xlat1;
  let x_139 : vec2<f32> = (vec2<f32>(x_135.x, x_135.x) * vec2<f32>(1.0f, 255.0f));
  let x_140 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_139.x, x_140.y, x_139.y);
  let x_142 : vec3<f32> = u_xlat1;
  let x_144 : vec2<f32> = fract(vec2<f32>(x_142.x, x_142.z));
  let x_145 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_144.x, x_145.y, x_144.y);
  let x_148 : f32 = u_xlat1.z;
  let x_153 : f32 = u_xlat1.x;
  u_xlat0.z = ((-(x_148) * 0.003921569f) + x_153);
  let x_157 : f32 = u_xlat1.z;
  u_xlat0.w = x_157;
  let x_162 : bool = u_xlatb3;
  let x_163 : vec4<f32> = u_xlat0;
  SV_Target0 = select(vec4<f32>(0.5f, 0.5f, 1.0f, 1.0f), x_163, vec4<bool>(x_162, x_162, x_162, x_162));
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

