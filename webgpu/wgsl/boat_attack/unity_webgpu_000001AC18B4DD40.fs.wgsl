diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_BlitTexture_TexelSize : vec4<f32>,
}

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr = array<strided_arr, 9u>;

struct TemporalAAData {
  /* @offset(0) */
  x_TaaMotionVectorTex_TexelSize : vec4<f32>,
  /* @offset(16) */
  x_TaaAccumulationTex_TexelSize : vec4<f32>,
  /* @offset(32) */
  x_TaaFilterWeights : Arr,
  /* @offset(176) */
  x_TaaFrameInfluence : f32,
  /* @offset(180) */
  x_TaaVarianceClampScale : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_TaaMotionVectorTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(0) @binding(2) var x_TaaAccumulationTex : texture_2d<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_PointClamp : sampler;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat18 : f32;

@group(1) @binding(1) var<uniform> x_217 : TemporalAAData;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_TaaMotionVectorTex, sampler_LinearClamp, x_23, x_34);
  let x_36 : vec2<f32> = vec2<f32>(x_35.x, x_35.y);
  let x_37 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_36.x, x_36.y, x_37.z);
  let x_39 : vec3<f32> = u_xlat0;
  let x_42 : vec2<f32> = vs_TEXCOORD0;
  let x_43 : vec2<f32> = (-(vec2<f32>(x_39.x, x_39.y)) + x_42);
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_43.x, x_43.y, x_44.z);
  let x_50 : vec3<f32> = u_xlat0;
  let x_53 : f32 = x_27.x_GlobalMipBias.x;
  let x_54 : vec4<f32> = textureSampleBias(x_TaaAccumulationTex, sampler_LinearClamp, vec2<f32>(x_50.x, x_50.y), x_53);
  u_xlat0 = vec3<f32>(x_54.x, x_54.y, x_54.z);
  let x_61 : vec4<f32> = x_27.x_BlitTexture_TexelSize;
  let x_67 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_61.x, x_61.y, x_61.x, x_61.y) * vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f)) + vec4<f32>(x_67.x, x_67.y, x_67.x, x_67.y));
  let x_76 : vec4<f32> = u_xlat1;
  let x_79 : f32 = x_27.x_GlobalMipBias.x;
  let x_80 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_76.z, x_76.w), x_79);
  u_xlat2 = vec3<f32>(x_80.x, x_80.y, x_80.z);
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : f32 = x_27.x_GlobalMipBias.x;
  let x_89 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_85.x, x_85.y), x_88);
  let x_90 : vec3<f32> = vec3<f32>(x_89.x, x_89.y, x_89.z);
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_97 : vec2<f32> = vs_TEXCOORD0;
  let x_99 : f32 = x_27.x_GlobalMipBias.x;
  let x_100 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_97, x_99);
  u_xlat3 = vec3<f32>(x_100.x, x_100.y, x_100.z);
  let x_103 : vec4<f32> = u_xlat1;
  let x_105 : vec3<f32> = u_xlat3;
  let x_106 : vec3<f32> = min(vec3<f32>(x_103.x, x_103.y, x_103.z), x_105);
  let x_107 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_109 : vec4<f32> = u_xlat1;
  let x_111 : vec3<f32> = u_xlat3;
  let x_112 : vec3<f32> = max(vec3<f32>(x_109.x, x_109.y, x_109.z), x_111);
  let x_113 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_115 : vec4<f32> = u_xlat1;
  let x_117 : vec3<f32> = u_xlat2;
  let x_118 : vec3<f32> = max(vec3<f32>(x_115.x, x_115.y, x_115.z), x_117);
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_121 : vec3<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat4;
  u_xlat2 = min(x_121, vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_126 : vec4<f32> = x_27.x_BlitTexture_TexelSize;
  let x_131 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_126.x, x_126.y, x_126.x, x_126.y) * vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f)) + vec4<f32>(x_131.x, x_131.y, x_131.x, x_131.y));
  let x_138 : vec4<f32> = u_xlat4;
  let x_141 : f32 = x_27.x_GlobalMipBias.x;
  let x_142 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_138.x, x_138.y), x_141);
  u_xlat5 = vec3<f32>(x_142.x, x_142.y, x_142.z);
  let x_147 : vec4<f32> = u_xlat4;
  let x_150 : f32 = x_27.x_GlobalMipBias.x;
  let x_151 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_147.z, x_147.w), x_150);
  let x_152 : vec3<f32> = vec3<f32>(x_151.x, x_151.y, x_151.z);
  let x_153 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_155 : vec3<f32> = u_xlat2;
  let x_156 : vec3<f32> = u_xlat5;
  u_xlat2 = min(x_155, x_156);
  let x_158 : vec4<f32> = u_xlat1;
  let x_160 : vec3<f32> = u_xlat5;
  let x_161 : vec3<f32> = max(vec3<f32>(x_158.x, x_158.y, x_158.z), x_160);
  let x_162 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
  let x_164 : vec4<f32> = u_xlat1;
  let x_166 : vec4<f32> = u_xlat4;
  let x_168 : vec3<f32> = max(vec3<f32>(x_164.x, x_164.y, x_164.z), vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_171 : vec3<f32> = u_xlat2;
  let x_172 : vec4<f32> = u_xlat4;
  u_xlat2 = min(x_171, vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : vec3<f32> = u_xlat0;
  let x_176 : vec3<f32> = u_xlat2;
  u_xlat0 = max(x_175, x_176);
  let x_178 : vec4<f32> = u_xlat1;
  let x_180 : vec3<f32> = u_xlat0;
  u_xlat0 = min(vec3<f32>(x_178.x, x_178.y, x_178.z), x_180);
  let x_184 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_184, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_190 : f32 = u_xlat18;
  u_xlat18 = (x_190 + 1.0f);
  let x_192 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_192);
  let x_194 : f32 = u_xlat18;
  let x_196 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_194, x_194, x_194) * x_196);
  let x_198 : vec3<f32> = u_xlat3;
  u_xlat18 = dot(x_198, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_200 : f32 = u_xlat18;
  u_xlat18 = (x_200 + 1.0f);
  let x_202 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_202);
  let x_204 : vec3<f32> = u_xlat3;
  let x_205 : f32 = u_xlat18;
  let x_208 : vec3<f32> = u_xlat0;
  let x_210 : vec3<f32> = ((x_204 * vec3<f32>(x_205, x_205, x_205)) + -(x_208));
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_220 : f32 = x_217.x_TaaFrameInfluence;
  let x_222 : f32 = x_217.x_TaaFrameInfluence;
  let x_224 : f32 = x_217.x_TaaFrameInfluence;
  let x_225 : vec3<f32> = vec3<f32>(x_220, x_222, x_224);
  let x_230 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_230.x, x_230.y, x_230.z)) + x_233);
  let x_235 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_235, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_237 : f32 = u_xlat18;
  u_xlat18 = (-(x_237) + 1.0f);
  let x_240 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_240);
  let x_242 : f32 = u_xlat18;
  let x_244 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_242, x_242, x_242) * x_244);
  let x_248 : vec3<f32> = u_xlat0;
  let x_250 : vec3<f32> = max(x_248, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_251 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  SV_Target0.w = 1.0f;
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


