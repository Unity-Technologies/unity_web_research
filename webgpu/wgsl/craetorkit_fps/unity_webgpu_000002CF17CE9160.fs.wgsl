struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  x_NonJitteredVP : mat4x4<f32>,
  x_PreviousVP : mat4x4<f32>,
}

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> gl_FragDepth : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : f32 = x_13.x_ProjectionParams.z;
  let x_26 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (x_20 / x_26);
  let x_31 : vec4<f32> = u_xlat0;
  let x_33 : vec3<f32> = vs_TEXCOORD1;
  let x_34 : vec3<f32> = (vec3<f32>(x_31.x, x_31.x, x_31.x) * x_33);
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_34.x, x_34.y, x_34.z, x_35.w);
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_51);
  u_xlat9 = x_52.x;
  let x_57 : f32 = x_13.x_ZBufferParams.x;
  let x_58 : f32 = u_xlat9;
  let x_62 : f32 = x_13.x_ZBufferParams.y;
  u_xlat1.x = ((x_57 * x_58) + x_62);
  let x_67 : f32 = u_xlat9;
  gl_FragDepth = x_67;
  let x_70 : f32 = u_xlat1.x;
  u_xlat9 = (1.0f / x_70);
  let x_72 : f32 = u_xlat9;
  let x_74 : vec4<f32> = u_xlat0;
  let x_76 : vec3<f32> = (vec3<f32>(x_72, x_72, x_72) * vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_79 : vec4<f32> = u_xlat0;
  let x_84 : vec4<f32> = x_13.unity_CameraToWorld[1i];
  u_xlat1 = (vec4<f32>(x_79.y, x_79.y, x_79.y, x_79.y) * x_84);
  let x_87 : vec4<f32> = x_13.unity_CameraToWorld[0i];
  let x_88 : vec4<f32> = u_xlat0;
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_87 * vec4<f32>(x_88.x, x_88.x, x_88.x, x_88.x)) + x_91);
  let x_94 : vec4<f32> = x_13.unity_CameraToWorld[2i];
  let x_95 : vec4<f32> = u_xlat0;
  let x_98 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_94 * vec4<f32>(x_95.z, x_95.z, x_95.z, x_95.z)) + x_98);
  let x_100 : vec4<f32> = u_xlat0;
  let x_103 : vec4<f32> = x_13.unity_CameraToWorld[3i];
  u_xlat0 = (x_100 + x_103);
  let x_105 : vec4<f32> = u_xlat0;
  let x_109 : vec4<f32> = x_13.x_PreviousVP[1i];
  let x_111 : vec3<f32> = (vec3<f32>(x_105.y, x_105.y, x_105.y) * vec3<f32>(x_109.x, x_109.y, x_109.w));
  let x_112 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_115 : vec4<f32> = x_13.x_PreviousVP[0i];
  let x_117 : vec4<f32> = u_xlat0;
  let x_120 : vec4<f32> = u_xlat1;
  let x_122 : vec3<f32> = ((vec3<f32>(x_115.x, x_115.y, x_115.w) * vec3<f32>(x_117.x, x_117.x, x_117.x)) + vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_126 : vec4<f32> = x_13.x_PreviousVP[2i];
  let x_128 : vec4<f32> = u_xlat0;
  let x_131 : vec4<f32> = u_xlat1;
  let x_133 : vec3<f32> = ((vec3<f32>(x_126.x, x_126.y, x_126.w) * vec3<f32>(x_128.z, x_128.z, x_128.z)) + vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_134 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_137 : vec4<f32> = x_13.x_PreviousVP[3i];
  let x_139 : vec4<f32> = u_xlat0;
  let x_142 : vec4<f32> = u_xlat1;
  let x_144 : vec3<f32> = ((vec3<f32>(x_137.x, x_137.y, x_137.w) * vec3<f32>(x_139.w, x_139.w, x_139.w)) + vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_147 : vec4<f32> = u_xlat1;
  let x_149 : vec4<f32> = u_xlat1;
  let x_151 : vec2<f32> = (vec2<f32>(x_147.x, x_147.y) / vec2<f32>(x_149.z, x_149.z));
  let x_152 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_151.x, x_151.y, x_152.z, x_152.w);
  let x_154 : vec4<f32> = u_xlat1;
  let x_157 : vec2<f32> = (vec2<f32>(x_154.x, x_154.y) + vec2<f32>(1.0f, 1.0f));
  let x_158 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_157.x, x_157.y, x_158.z, x_158.w);
  let x_161 : f32 = u_xlat1.x;
  u_xlat1.x = (x_161 * 0.5f);
  let x_166 : f32 = u_xlat1.y;
  u_xlat1.z = ((-(x_166) * 0.5f) + 1.0f);
  let x_173 : vec4<f32> = u_xlat0;
  let x_176 : vec4<f32> = x_13.x_NonJitteredVP[1i];
  u_xlat2 = (vec3<f32>(x_173.y, x_173.y, x_173.y) * vec3<f32>(x_176.x, x_176.y, x_176.w));
  let x_180 : vec4<f32> = x_13.x_NonJitteredVP[0i];
  let x_182 : vec4<f32> = u_xlat0;
  let x_185 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_180.x, x_180.y, x_180.w) * vec3<f32>(x_182.x, x_182.x, x_182.x)) + x_185);
  let x_188 : vec4<f32> = x_13.x_NonJitteredVP[2i];
  let x_190 : vec4<f32> = u_xlat0;
  let x_193 : vec3<f32> = u_xlat2;
  let x_194 : vec3<f32> = ((vec3<f32>(x_188.x, x_188.y, x_188.w) * vec3<f32>(x_190.z, x_190.z, x_190.z)) + x_193);
  let x_195 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_198 : vec4<f32> = x_13.x_NonJitteredVP[3i];
  let x_200 : vec4<f32> = u_xlat0;
  let x_203 : vec4<f32> = u_xlat0;
  let x_205 : vec3<f32> = ((vec3<f32>(x_198.x, x_198.y, x_198.w) * vec3<f32>(x_200.w, x_200.w, x_200.w)) + vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec4<f32> = u_xlat0;
  let x_210 : vec4<f32> = u_xlat0;
  let x_212 : vec2<f32> = (vec2<f32>(x_208.x, x_208.y) / vec2<f32>(x_210.z, x_210.z));
  let x_213 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_212.x, x_212.y, x_213.z, x_213.w);
  let x_215 : vec4<f32> = u_xlat0;
  let x_217 : vec2<f32> = (vec2<f32>(x_215.x, x_215.y) + vec2<f32>(1.0f, 1.0f));
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_218.w);
  let x_221 : f32 = u_xlat0.x;
  u_xlat0.x = (x_221 * 0.5f);
  let x_225 : f32 = u_xlat0.y;
  u_xlat0.z = ((-(x_225) * 0.5f) + 1.0f);
  let x_232 : vec4<f32> = u_xlat1;
  let x_235 : vec4<f32> = u_xlat0;
  let x_237 : vec2<f32> = (-(vec2<f32>(x_232.x, x_232.z)) + vec2<f32>(x_235.x, x_235.z));
  let x_238 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_237.x, x_237.y, x_238.z, x_238.w);
  let x_242 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_242.x, x_242.y, vec2<f32>(0.0f, 1.0f).x, vec2<f32>(0.0f, 1.0f).y);
  return;
}

struct main_out {
  @builtin(frag_depth)
  gl_FragDepth_1 : f32,
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(gl_FragDepth, SV_Target0);
}

