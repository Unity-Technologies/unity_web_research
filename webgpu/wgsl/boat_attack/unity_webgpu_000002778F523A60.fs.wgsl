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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat18 : f32;

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
  let x_49 : vec4<f32> = x_13.x_RTHandleScale;
  let x_52 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_55 : vec2<f32> = (vec2<f32>(x_49.x, x_49.y) + -(vec2<f32>(x_52.x, x_52.y)));
  let x_56 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_58 : vec4<f32> = u_xlat1;
  let x_59 : vec4<f32> = u_xlat2;
  u_xlat1 = min(x_58, vec4<f32>(x_59.x, x_59.y, x_59.x, x_59.y));
  let x_73 : vec4<f32> = u_xlat1;
  let x_79 : f32 = x_13.x_GlobalMipBias.x;
  let x_80 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_73.z, x_73.w), x_79);
  u_xlat3 = x_80;
  let x_84 : vec4<f32> = u_xlat1;
  let x_87 : f32 = x_13.x_GlobalMipBias.x;
  let x_88 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_84.x, x_84.y), x_87);
  u_xlat1 = x_88;
  let x_90 : vec4<f32> = u_xlat1;
  let x_92 : vec4<f32> = u_xlat1;
  let x_94 : vec3<f32> = (vec3<f32>(x_90.w, x_90.w, x_90.w) * vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_97 : vec4<f32> = u_xlat3;
  let x_99 : vec4<f32> = u_xlat3;
  let x_101 : vec3<f32> = (vec3<f32>(x_97.w, x_97.w, x_97.w) * vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_104 : vec4<f32> = u_xlat3;
  let x_108 : vec3<f32> = (vec3<f32>(x_104.x, x_104.y, x_104.z) * vec3<f32>(0.43243241310119628906f, 0.43243241310119628906f, 0.43243241310119628906f));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_111 : vec4<f32> = u_xlat1;
  let x_116 : vec4<f32> = u_xlat3;
  let x_118 : vec3<f32> = ((vec3<f32>(x_111.x, x_111.y, x_111.z) * vec3<f32>(0.12972976267337799072f, 0.12972976267337799072f, 0.12972976267337799072f)) + vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_122 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_127 : vec2<f32> = (vec2<f32>(x_122.x, x_122.x) * vec2<f32>(4.0f, 2.0f));
  let x_128 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_127.x, x_128.y, x_127.y, x_128.w);
  u_xlat3.y = 0.0f;
  u_xlat3.w = 0.0f;
  let x_133 : vec4<f32> = u_xlat3;
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = (-(x_133) + vec4<f32>(x_135.x, x_135.y, x_135.x, x_135.y));
  let x_138 : vec4<f32> = u_xlat3;
  let x_140 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = (vec4<f32>(x_138.z, x_138.w, x_138.x, x_138.y) + vec4<f32>(x_140.x, x_140.y, x_140.x, x_140.y));
  let x_143 : vec4<f32> = u_xlat2;
  let x_145 : vec4<f32> = u_xlat3;
  u_xlat3 = min(vec4<f32>(x_143.x, x_143.y, x_143.x, x_143.y), x_145);
  let x_147 : vec4<f32> = u_xlat2;
  let x_149 : vec4<f32> = u_xlat4;
  u_xlat4 = min(vec4<f32>(x_147.x, x_147.y, x_147.x, x_147.y), x_149);
  let x_155 : vec4<f32> = u_xlat4;
  let x_158 : f32 = x_13.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_155.x, x_155.y), x_158);
  u_xlat5 = x_159;
  let x_163 : vec4<f32> = u_xlat4;
  let x_166 : f32 = x_13.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_163.z, x_163.w), x_166);
  u_xlat4 = x_167;
  let x_168 : vec4<f32> = u_xlat4;
  let x_170 : vec4<f32> = u_xlat4;
  let x_172 : vec3<f32> = (vec3<f32>(x_168.w, x_168.w, x_168.w) * vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_175 : vec4<f32> = u_xlat5;
  let x_177 : vec4<f32> = u_xlat5;
  let x_179 : vec3<f32> = (vec3<f32>(x_175.w, x_175.w, x_175.w) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_182 : vec4<f32> = u_xlat5;
  let x_187 : vec4<f32> = u_xlat1;
  let x_189 : vec3<f32> = ((vec3<f32>(x_182.x, x_182.y, x_182.z) * vec3<f32>(0.97297298908233642578f, 0.97297298908233642578f, 0.97297298908233642578f)) + vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat4;
  let x_197 : vec4<f32> = u_xlat1;
  let x_199 : vec3<f32> = ((vec3<f32>(x_192.x, x_192.y, x_192.z) * vec3<f32>(1.55675673484802246094f, 1.55675673484802246094f, 1.55675673484802246094f)) + vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_200 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_204 : vec4<f32> = u_xlat2;
  let x_206 : vec2<f32> = vs_TEXCOORD0;
  u_xlat14 = min(vec2<f32>(x_204.x, x_204.y), x_206);
  let x_208 : vec4<f32> = u_xlat0;
  let x_209 : vec4<f32> = u_xlat2;
  u_xlat0 = min(x_208, vec4<f32>(x_209.x, x_209.y, x_209.x, x_209.y));
  let x_215 : vec2<f32> = u_xlat14;
  let x_217 : f32 = x_13.x_GlobalMipBias.x;
  let x_218 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_215, x_217);
  u_xlat2 = x_218;
  let x_219 : vec4<f32> = u_xlat2;
  let x_221 : vec4<f32> = u_xlat2;
  let x_223 : vec3<f32> = (vec3<f32>(x_219.w, x_219.w, x_219.w) * vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat2;
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = ((vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(1.81621623039245605469f, 1.81621623039245605469f, 1.81621623039245605469f)) + vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_239 : vec4<f32> = u_xlat3;
  let x_242 : f32 = x_13.x_GlobalMipBias.x;
  let x_243 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_239.x, x_239.y), x_242);
  u_xlat2 = x_243;
  let x_247 : vec4<f32> = u_xlat3;
  let x_250 : f32 = x_13.x_GlobalMipBias.x;
  let x_251 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_247.z, x_247.w), x_250);
  u_xlat3 = x_251;
  let x_252 : vec4<f32> = u_xlat3;
  let x_254 : vec4<f32> = u_xlat3;
  let x_256 : vec3<f32> = (vec3<f32>(x_252.w, x_252.w, x_252.w) * vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : vec4<f32> = u_xlat2;
  let x_261 : vec4<f32> = u_xlat2;
  let x_263 : vec3<f32> = (vec3<f32>(x_259.w, x_259.w, x_259.w) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat2;
  let x_269 : vec4<f32> = u_xlat1;
  let x_271 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(1.55675673484802246094f, 1.55675673484802246094f, 1.55675673484802246094f)) + vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_274 : vec4<f32> = u_xlat3;
  let x_277 : vec4<f32> = u_xlat1;
  let x_279 : vec3<f32> = ((vec3<f32>(x_274.x, x_274.y, x_274.z) * vec3<f32>(0.97297298908233642578f, 0.97297298908233642578f, 0.97297298908233642578f)) + vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_285 : vec4<f32> = u_xlat0;
  let x_288 : f32 = x_13.x_GlobalMipBias.x;
  let x_289 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_285.x, x_285.y), x_288);
  u_xlat2 = x_289;
  let x_293 : vec4<f32> = u_xlat0;
  let x_296 : f32 = x_13.x_GlobalMipBias.x;
  let x_297 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_293.z, x_293.w), x_296);
  u_xlat0 = x_297;
  let x_298 : vec4<f32> = u_xlat0;
  let x_300 : vec4<f32> = u_xlat0;
  let x_302 : vec3<f32> = (vec3<f32>(x_298.w, x_298.w, x_298.w) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat2;
  let x_307 : vec4<f32> = u_xlat2;
  let x_309 : vec3<f32> = (vec3<f32>(x_305.w, x_305.w, x_305.w) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat2;
  let x_315 : vec4<f32> = u_xlat1;
  let x_317 : vec3<f32> = ((vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(0.43243241310119628906f, 0.43243241310119628906f, 0.43243241310119628906f)) + vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat0;
  let x_323 : vec4<f32> = u_xlat1;
  let x_325 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(0.12972976267337799072f, 0.12972976267337799072f, 0.12972976267337799072f)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat0;
  let x_332 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(0.125f, 0.125f, 0.125f));
  let x_333 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_337 : f32 = u_xlat0.y;
  let x_339 : f32 = u_xlat0.x;
  u_xlat18 = max(x_337, x_339);
  let x_343 : f32 = u_xlat0.z;
  u_xlat1.x = max(x_343, 0.00000999999974737875f);
  let x_347 : f32 = u_xlat18;
  let x_349 : f32 = u_xlat1.x;
  u_xlat18 = max(x_347, x_349);
  let x_351 : f32 = u_xlat18;
  u_xlat18 = (x_351 * 255.0f);
  let x_354 : f32 = u_xlat18;
  u_xlat18 = ceil(x_354);
  let x_356 : f32 = u_xlat18;
  u_xlat18 = (x_356 * 0.0039215688593685627f);
  let x_361 : vec4<f32> = u_xlat0;
  let x_363 : f32 = u_xlat18;
  let x_365 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) / vec3<f32>(x_363, x_363, x_363));
  let x_366 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : f32 = u_xlat18;
  SV_Target0.w = x_368;
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


