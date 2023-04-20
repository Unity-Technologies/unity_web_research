diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4<f32>,
  /* @offset(16) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(32) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(48) */
  unity_MatrixInvVP : mat4x4<f32>,
  /* @offset(112) */
  x_PrevViewProjMatrix : mat4x4<f32>,
  /* @offset(176) */
  x_NonJitteredViewProjMatrix : mat4x4<f32>,
  /* @offset(240) */
  x_CameraDepthTexture_TexelSize : vec4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_34 : PGlobals;

var<private> u_xlat6 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_CameraDepthTexture : sampler;

var<private> gl_FragDepth : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat2 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_29 : vec4<f32> = hlslcc_FragCoord;
  let x_39 : vec4<f32> = x_34.x_ScaledScreenParams;
  let x_41 : vec2<f32> = (vec2<f32>(x_29.x, x_29.y) / vec2<f32>(x_39.x, x_39.y));
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_41.x, x_41.y, x_42.z, x_42.w);
  let x_46 : vec4<f32> = u_xlat0;
  u_xlat6 = ((vec2<f32>(x_46.x, x_46.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_55 : vec2<f32> = u_xlat6;
  let x_61 : vec4<f32> = x_34.unity_MatrixInvVP[1i];
  u_xlat1 = (-(vec4<f32>(x_55.y, x_55.y, x_55.y, x_55.y)) * x_61);
  let x_64 : vec4<f32> = x_34.unity_MatrixInvVP[0i];
  let x_65 : vec2<f32> = u_xlat6;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.x, x_65.x, x_65.x, x_65.x)) + x_68);
  let x_72 : vec4<f32> = x_34.x_CameraDepthTexture_TexelSize;
  u_xlat6 = ((-(vec2<f32>(x_72.x, x_72.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(1.0f, 1.0f));
  let x_80 : vec2<f32> = u_xlat6;
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec2<f32> = min(x_80, vec2<f32>(x_81.x, x_81.y));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_86 : vec4<f32> = u_xlat0;
  let x_90 : vec4<f32> = x_34.x_RTHandleScale;
  let x_92 : vec2<f32> = (vec2<f32>(x_86.x, x_86.y) * vec2<f32>(x_90.x, x_90.y));
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_92.x, x_92.y, x_93.z, x_93.w);
  let x_105 : vec4<f32> = u_xlat0;
  let x_110 : f32 = x_34.x_GlobalMipBias.x;
  let x_111 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_105.x, x_105.y), x_110);
  u_xlat0.x = x_111.x;
  let x_116 : vec4<f32> = x_34.unity_MatrixInvVP[2i];
  let x_117 : vec4<f32> = u_xlat0;
  let x_120 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_116 * vec4<f32>(x_117.x, x_117.x, x_117.x, x_117.x)) + x_120);
  let x_125 : f32 = u_xlat0.x;
  gl_FragDepth = x_125;
  let x_126 : vec4<f32> = u_xlat1;
  let x_128 : vec4<f32> = x_34.unity_MatrixInvVP[3i];
  u_xlat0 = (x_126 + x_128);
  let x_130 : vec4<f32> = u_xlat0;
  let x_132 : vec4<f32> = u_xlat0;
  let x_134 : vec3<f32> = (vec3<f32>(x_130.x, x_130.y, x_130.z) / vec3<f32>(x_132.w, x_132.w, x_132.w));
  let x_135 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_137 : vec4<f32> = u_xlat0;
  let x_141 : vec4<f32> = x_34.x_PrevViewProjMatrix[1i];
  let x_143 : vec3<f32> = (vec3<f32>(x_137.y, x_137.y, x_137.y) * vec3<f32>(x_141.x, x_141.y, x_141.w));
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec4<f32> = x_34.x_PrevViewProjMatrix[0i];
  let x_149 : vec4<f32> = u_xlat0;
  let x_152 : vec4<f32> = u_xlat1;
  let x_154 : vec3<f32> = ((vec3<f32>(x_147.x, x_147.y, x_147.w) * vec3<f32>(x_149.x, x_149.x, x_149.x)) + vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = x_34.x_PrevViewProjMatrix[2i];
  let x_160 : vec4<f32> = u_xlat0;
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.w) * vec3<f32>(x_160.z, x_160.z, x_160.z)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat1;
  let x_171 : vec4<f32> = x_34.x_PrevViewProjMatrix[3i];
  let x_173 : vec3<f32> = (vec3<f32>(x_168.x, x_168.y, x_168.z) + vec3<f32>(x_171.x, x_171.y, x_171.w));
  let x_174 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_179 : f32 = u_xlat1.z;
  u_xlat9 = (1.0f / x_179);
  let x_181 : f32 = u_xlat9;
  let x_183 : vec4<f32> = u_xlat1;
  let x_185 : vec2<f32> = (vec2<f32>(x_181, x_181) * vec2<f32>(x_183.x, x_183.y));
  let x_186 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_185.x, x_185.y, x_186.z, x_186.w);
  let x_190 : vec4<f32> = u_xlat0;
  let x_194 : vec4<f32> = x_34.x_NonJitteredViewProjMatrix[1i];
  u_xlat2 = (vec3<f32>(x_190.y, x_190.y, x_190.y) * vec3<f32>(x_194.x, x_194.y, x_194.w));
  let x_198 : vec4<f32> = x_34.x_NonJitteredViewProjMatrix[0i];
  let x_200 : vec4<f32> = u_xlat0;
  let x_203 : vec3<f32> = u_xlat2;
  let x_204 : vec3<f32> = ((vec3<f32>(x_198.x, x_198.y, x_198.w) * vec3<f32>(x_200.x, x_200.x, x_200.x)) + x_203);
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_204.x, x_204.y, x_205.z, x_204.z);
  let x_208 : vec4<f32> = x_34.x_NonJitteredViewProjMatrix[2i];
  let x_210 : vec4<f32> = u_xlat0;
  let x_213 : vec4<f32> = u_xlat0;
  let x_215 : vec3<f32> = ((vec3<f32>(x_208.x, x_208.y, x_208.w) * vec3<f32>(x_210.z, x_210.z, x_210.z)) + vec3<f32>(x_213.x, x_213.y, x_213.w));
  let x_216 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_218 : vec4<f32> = u_xlat0;
  let x_221 : vec4<f32> = x_34.x_NonJitteredViewProjMatrix[3i];
  let x_223 : vec3<f32> = (vec3<f32>(x_218.x, x_218.y, x_218.z) + vec3<f32>(x_221.x, x_221.y, x_221.w));
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_227 : f32 = u_xlat0.z;
  u_xlat6.x = (1.0f / x_227);
  let x_230 : vec4<f32> = u_xlat0;
  let x_232 : vec2<f32> = u_xlat6;
  let x_235 : vec4<f32> = u_xlat1;
  let x_238 : vec2<f32> = ((vec2<f32>(x_230.x, x_230.y) * vec2<f32>(x_232.x, x_232.x)) + -(vec2<f32>(x_235.x, x_235.y)));
  let x_239 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_238.x, x_238.y, x_239.z, x_239.w);
  let x_243 : vec4<f32> = u_xlat0;
  let x_247 : vec2<f32> = (vec2<f32>(x_243.x, x_243.y) * vec2<f32>(0.5f, -0.5f));
  let x_248 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_247.x, x_247.y, x_248.z, x_248.w);
  let x_252 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_252.x, x_252.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  return;
}

struct main_out {
  @builtin(frag_depth)
  gl_FragDepth_1 : f32,
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(gl_FragDepth, SV_Target0);
}


