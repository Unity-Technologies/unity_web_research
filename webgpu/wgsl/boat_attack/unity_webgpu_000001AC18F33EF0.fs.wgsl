diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat14 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_23 : vec2<f32> = (vec2<f32>(x_18.x, x_18.x) * vec2<f32>(8.0f, 6.0f));
  let x_24 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_23.x, x_24.y, x_23.y, x_24.w);
  u_xlat0.y = 0.0f;
  u_xlat0.w = 0.0f;
  let x_34 : vec4<f32> = u_xlat0;
  let x_38 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = (-(x_34) + vec4<f32>(x_38.x, x_38.y, x_38.x, x_38.y));
  let x_41 : vec4<f32> = u_xlat0;
  let x_43 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = (vec4<f32>(x_41.z, x_41.w, x_41.x, x_41.w) + vec4<f32>(x_43.x, x_43.y, x_43.x, x_43.y));
  let x_51 : vec4<f32> = x_13.x_RTHandleScale;
  let x_54 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_57 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) + -(vec2<f32>(x_54.x, x_54.y)));
  let x_58 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_57.x, x_57.y, x_58.z);
  let x_60 : vec4<f32> = u_xlat1;
  let x_61 : vec3<f32> = u_xlat2;
  u_xlat1 = min(x_60, vec4<f32>(x_61.x, x_61.y, x_61.x, x_61.y));
  let x_75 : vec4<f32> = u_xlat1;
  let x_81 : f32 = x_13.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_75.z, x_75.w), x_81);
  let x_83 : vec3<f32> = vec3<f32>(x_82.x, x_82.y, x_82.z);
  let x_84 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_89 : vec4<f32> = u_xlat1;
  let x_92 : f32 = x_13.x_GlobalMipBias.x;
  let x_93 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_89.x, x_89.y), x_92);
  let x_94 : vec3<f32> = vec3<f32>(x_93.x, x_93.y, x_93.z);
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_97 : vec4<f32> = u_xlat3;
  let x_101 : vec3<f32> = (vec3<f32>(x_97.x, x_97.y, x_97.z) * vec3<f32>(0.05405405163764953613f, 0.05405405163764953613f, 0.05405405163764953613f));
  let x_102 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_104 : vec4<f32> = u_xlat1;
  let x_109 : vec4<f32> = u_xlat3;
  let x_111 : vec3<f32> = ((vec3<f32>(x_104.x, x_104.y, x_104.z) * vec3<f32>(0.01621622033417224884f, 0.01621622033417224884f, 0.01621622033417224884f)) + vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_112 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_115 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_120 : vec2<f32> = (vec2<f32>(x_115.x, x_115.x) * vec2<f32>(4.0f, 2.0f));
  let x_121 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_120.x, x_121.y, x_120.y, x_121.w);
  u_xlat3.y = 0.0f;
  u_xlat3.w = 0.0f;
  let x_126 : vec4<f32> = u_xlat3;
  let x_128 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = (-(x_126) + vec4<f32>(x_128.x, x_128.y, x_128.x, x_128.y));
  let x_131 : vec4<f32> = u_xlat3;
  let x_133 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = (vec4<f32>(x_131.z, x_131.w, x_131.x, x_131.y) + vec4<f32>(x_133.x, x_133.y, x_133.x, x_133.y));
  let x_136 : vec3<f32> = u_xlat2;
  let x_138 : vec4<f32> = u_xlat3;
  u_xlat3 = min(vec4<f32>(x_136.x, x_136.y, x_136.x, x_136.y), x_138);
  let x_140 : vec3<f32> = u_xlat2;
  let x_142 : vec4<f32> = u_xlat4;
  u_xlat4 = min(vec4<f32>(x_140.x, x_140.y, x_140.x, x_140.y), x_142);
  let x_148 : vec4<f32> = u_xlat4;
  let x_151 : f32 = x_13.x_GlobalMipBias.x;
  let x_152 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_148.x, x_148.y), x_151);
  u_xlat5 = vec3<f32>(x_152.x, x_152.y, x_152.z);
  let x_157 : vec4<f32> = u_xlat4;
  let x_160 : f32 = x_13.x_GlobalMipBias.x;
  let x_161 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_157.z, x_157.w), x_160);
  let x_162 : vec3<f32> = vec3<f32>(x_161.x, x_161.y, x_161.z);
  let x_163 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_165 : vec3<f32> = u_xlat5;
  let x_169 : vec4<f32> = u_xlat1;
  let x_171 : vec3<f32> = ((x_165 * vec3<f32>(0.12162162363529205322f, 0.12162162363529205322f, 0.12162162363529205322f)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat4;
  let x_179 : vec4<f32> = u_xlat1;
  let x_181 : vec3<f32> = ((vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(0.19459459185600280762f, 0.19459459185600280762f, 0.19459459185600280762f)) + vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_186 : vec3<f32> = u_xlat2;
  let x_188 : vec2<f32> = vs_TEXCOORD0;
  u_xlat14 = min(vec2<f32>(x_186.x, x_186.y), x_188);
  let x_190 : vec4<f32> = u_xlat0;
  let x_191 : vec3<f32> = u_xlat2;
  u_xlat0 = min(x_190, vec4<f32>(x_191.x, x_191.y, x_191.x, x_191.y));
  let x_197 : vec2<f32> = u_xlat14;
  let x_199 : f32 = x_13.x_GlobalMipBias.x;
  let x_200 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_197, x_199);
  u_xlat2 = vec3<f32>(x_200.x, x_200.y, x_200.z);
  let x_202 : vec3<f32> = u_xlat2;
  let x_206 : vec4<f32> = u_xlat1;
  let x_208 : vec3<f32> = ((x_202 * vec3<f32>(0.22702702879905700684f, 0.22702702879905700684f, 0.22702702879905700684f)) + vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_214 : vec4<f32> = u_xlat3;
  let x_217 : f32 = x_13.x_GlobalMipBias.x;
  let x_218 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_214.x, x_214.y), x_217);
  u_xlat2 = vec3<f32>(x_218.x, x_218.y, x_218.z);
  let x_223 : vec4<f32> = u_xlat3;
  let x_226 : f32 = x_13.x_GlobalMipBias.x;
  let x_227 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_223.z, x_223.w), x_226);
  let x_228 : vec3<f32> = vec3<f32>(x_227.x, x_227.y, x_227.z);
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec3<f32> = u_xlat2;
  let x_233 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = ((x_231 * vec3<f32>(0.19459459185600280762f, 0.19459459185600280762f, 0.19459459185600280762f)) + vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat3;
  let x_241 : vec4<f32> = u_xlat1;
  let x_243 : vec3<f32> = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(0.12162162363529205322f, 0.12162162363529205322f, 0.12162162363529205322f)) + vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_249 : vec4<f32> = u_xlat0;
  let x_252 : f32 = x_13.x_GlobalMipBias.x;
  let x_253 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_249.x, x_249.y), x_252);
  u_xlat2 = vec3<f32>(x_253.x, x_253.y, x_253.z);
  let x_258 : vec4<f32> = u_xlat0;
  let x_261 : f32 = x_13.x_GlobalMipBias.x;
  let x_262 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_258.z, x_258.w), x_261);
  let x_263 : vec3<f32> = vec3<f32>(x_262.x, x_262.y, x_262.z);
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec3<f32> = u_xlat2;
  let x_268 : vec4<f32> = u_xlat1;
  let x_270 : vec3<f32> = ((x_266 * vec3<f32>(0.05405405163764953613f, 0.05405405163764953613f, 0.05405405163764953613f)) + vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_275 : vec4<f32> = u_xlat0;
  let x_278 : vec4<f32> = u_xlat1;
  let x_280 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(0.01621622033417224884f, 0.01621622033417224884f, 0.01621622033417224884f)) + vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
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


