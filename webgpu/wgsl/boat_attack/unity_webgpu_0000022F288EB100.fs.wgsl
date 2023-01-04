struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlatb15 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_291 : f32;
  var x_303 : f32;
  var x_315 : f32;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_461 : f32;
  var x_473 : f32;
  var x_485 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_574 : f32;
  var x_586 : f32;
  var x_598 : f32;
  var x_648 : f32;
  var x_660 : f32;
  var x_672 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_34);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_44 : f32 = x_27.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_44);
  let x_46 : bool = u_xlatb15;
  if (x_46) {
    let x_50 : vec2<f32> = vs_TEXCOORD0;
    let x_53 : vec4<f32> = x_27.x_Vignette_Params2;
    let x_56 : vec2<f32> = (x_50 + -(vec2<f32>(x_53.x, x_53.y)));
    let x_57 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_56.x, x_56.y, x_57.z);
    let x_59 : vec3<f32> = u_xlat1;
    let x_63 : vec4<f32> = x_27.x_Vignette_Params2;
    let x_65 : vec2<f32> = (abs(vec2<f32>(x_59.x, x_59.y)) * vec2<f32>(x_63.z, x_63.z));
    let x_66 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_66.x, x_65.x, x_65.y);
    let x_71 : f32 = u_xlat1.y;
    let x_75 : f32 = x_27.x_Vignette_Params1.w;
    u_xlat1.x = (x_71 * x_75);
    let x_79 : vec3<f32> = u_xlat1;
    let x_81 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_79.x, x_79.z), vec2<f32>(x_81.x, x_81.z));
    let x_84 : f32 = u_xlat15;
    u_xlat15 = (-(x_84) + 1.0f);
    let x_88 : f32 = u_xlat15;
    u_xlat15 = max(x_88, 0.0f);
    let x_90 : f32 = u_xlat15;
    u_xlat15 = log2(x_90);
    let x_92 : f32 = u_xlat15;
    let x_94 : f32 = x_27.x_Vignette_Params2.w;
    u_xlat15 = (x_92 * x_94);
    let x_96 : f32 = u_xlat15;
    u_xlat15 = exp2(x_96);
    let x_99 : vec4<f32> = x_27.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_99.x, x_99.y, x_99.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_104 : f32 = u_xlat15;
    let x_106 : vec3<f32> = u_xlat1;
    let x_109 : vec4<f32> = x_27.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_104, x_104, x_104) * x_106) + vec3<f32>(x_109.x, x_109.y, x_109.z));
    let x_112 : vec3<f32> = u_xlat0;
    let x_113 : vec3<f32> = u_xlat1;
    u_xlat0 = (x_112 * x_113);
  }
  let x_115 : vec3<f32> = u_xlat0;
  let x_119 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_115.z, x_115.x, x_115.y) * vec3<f32>(x_119.w, x_119.w, x_119.w));
  let x_122 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_122 * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_129 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_129, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_132 : vec3<f32> = u_xlat0;
  u_xlat0 = log2(x_132);
  let x_134 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_134 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_141 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_141, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_146 : vec3<f32> = u_xlat0;
  let x_148 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat5 = (x_146 * vec3<f32>(x_148.z, x_148.z, x_148.z));
  let x_152 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_152);
  let x_156 : vec4<f32> = x_27.x_Lut_Params;
  let x_160 : vec2<f32> = (vec2<f32>(x_156.x, x_156.y) * vec2<f32>(0.5f, 0.5f));
  let x_161 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_160.x, x_160.y, x_161.z);
  let x_163 : vec3<f32> = u_xlat5;
  let x_166 : vec4<f32> = x_27.x_Lut_Params;
  let x_169 : vec3<f32> = u_xlat1;
  let x_171 : vec2<f32> = ((vec2<f32>(x_163.y, x_163.z) * vec2<f32>(x_166.x, x_166.y)) + vec2<f32>(x_169.x, x_169.y));
  let x_172 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_172.x, x_171.x, x_171.y);
  let x_175 : f32 = u_xlat5.x;
  let x_177 : f32 = x_27.x_Lut_Params.y;
  let x_180 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_175 * x_177) + x_180);
  let x_189 : vec3<f32> = u_xlat1;
  let x_191 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_189.x, x_189.z), 0.0f);
  let x_192 : vec3<f32> = vec3<f32>(x_191.x, x_191.y, x_191.z);
  let x_193 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_197 : f32 = x_27.x_Lut_Params.y;
  u_xlat3.x = x_197;
  u_xlat3.y = 0.0f;
  let x_202 : vec3<f32> = u_xlat1;
  let x_204 : vec3<f32> = u_xlat3;
  u_xlat10 = (vec2<f32>(x_202.x, x_202.z) + vec2<f32>(x_204.x, x_204.y));
  let x_210 : vec2<f32> = u_xlat10;
  let x_211 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_210, 0.0f);
  u_xlat1 = vec3<f32>(x_211.x, x_211.y, x_211.z);
  let x_214 : f32 = u_xlat0.x;
  let x_216 : f32 = x_27.x_Lut_Params.z;
  let x_219 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_214 * x_216) + -(x_219));
  let x_223 : vec4<f32> = u_xlat2;
  let x_226 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_223.x, x_223.y, x_223.z)) + x_226);
  let x_228 : vec3<f32> = u_xlat0;
  let x_230 : vec3<f32> = u_xlat5;
  let x_232 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_228.x, x_228.x, x_228.x) * x_230) + vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_237 : f32 = x_27.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_237);
  let x_239 : bool = u_xlatb15;
  if (x_239) {
    let x_242 : vec3<f32> = u_xlat0;
    u_xlat0 = x_242;
    let x_243 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_243, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_247 : vec3<f32> = u_xlat0;
    u_xlat1 = (x_247 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_251 : vec3<f32> = u_xlat0;
    let x_252 : vec3<f32> = log2(x_251);
    let x_253 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
    let x_255 : vec4<f32> = u_xlat2;
    let x_259 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_260 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
    let x_262 : vec4<f32> = u_xlat2;
    let x_264 : vec3<f32> = exp2(vec3<f32>(x_262.x, x_262.y, x_262.z));
    let x_265 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
    let x_267 : vec4<f32> = u_xlat2;
    let x_274 : vec3<f32> = ((vec3<f32>(x_267.x, x_267.y, x_267.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_275 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_282 : vec3<f32> = u_xlat0;
    let x_285 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_282.x, x_282.y, x_282.z, x_282.x));
    u_xlatb3 = vec3<bool>(x_285.x, x_285.y, x_285.z);
    let x_288 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_288;
    let x_290 : bool = u_xlatb3.x;
    if (x_290) {
      let x_295 : f32 = u_xlat1.x;
      x_291 = x_295;
    } else {
      let x_298 : f32 = u_xlat2.x;
      x_291 = x_298;
    }
    let x_299 : f32 = x_291;
    hlslcc_movcTemp.x = x_299;
    let x_302 : bool = u_xlatb3.y;
    if (x_302) {
      let x_307 : f32 = u_xlat1.y;
      x_303 = x_307;
    } else {
      let x_310 : f32 = u_xlat2.y;
      x_303 = x_310;
    }
    let x_311 : f32 = x_303;
    hlslcc_movcTemp.y = x_311;
    let x_314 : bool = u_xlatb3.z;
    if (x_314) {
      let x_319 : f32 = u_xlat1.z;
      x_315 = x_319;
    } else {
      let x_322 : f32 = u_xlat2.z;
      x_315 = x_322;
    }
    let x_323 : f32 = x_315;
    hlslcc_movcTemp.z = x_323;
    let x_325 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_325;
    let x_326 : vec3<f32> = u_xlat1;
    let x_329 : vec4<f32> = x_27.x_UserLut_Params;
    let x_331 : vec3<f32> = (vec3<f32>(x_326.z, x_326.x, x_326.y) * vec3<f32>(x_329.z, x_329.z, x_329.z));
    let x_332 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
    let x_335 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_335);
    let x_338 : vec4<f32> = x_27.x_UserLut_Params;
    let x_340 : vec2<f32> = (vec2<f32>(x_338.x, x_338.y) * vec2<f32>(0.5f, 0.5f));
    let x_341 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_340.x, x_341.y, x_341.z, x_340.y);
    let x_343 : vec4<f32> = u_xlat2;
    let x_346 : vec4<f32> = x_27.x_UserLut_Params;
    let x_349 : vec4<f32> = u_xlat2;
    let x_351 : vec2<f32> = ((vec2<f32>(x_343.y, x_343.z) * vec2<f32>(x_346.x, x_346.y)) + vec2<f32>(x_349.x, x_349.w));
    let x_352 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_352.x, x_351.x, x_351.y, x_352.w);
    let x_354 : f32 = u_xlat15;
    let x_356 : f32 = x_27.x_UserLut_Params.y;
    let x_359 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_354 * x_356) + x_359);
    let x_366 : vec4<f32> = u_xlat2;
    let x_368 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_366.x, x_366.z), 0.0f);
    u_xlat3 = vec3<f32>(x_368.x, x_368.y, x_368.z);
    let x_372 : f32 = x_27.x_UserLut_Params.y;
    u_xlat4.x = x_372;
    u_xlat4.y = 0.0f;
    let x_375 : vec4<f32> = u_xlat2;
    let x_377 : vec2<f32> = u_xlat4;
    let x_378 : vec2<f32> = (vec2<f32>(x_375.x, x_375.z) + x_377);
    let x_379 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
    let x_384 : vec4<f32> = u_xlat2;
    let x_386 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_384.x, x_384.y), 0.0f);
    let x_387 : vec3<f32> = vec3<f32>(x_386.x, x_386.y, x_386.z);
    let x_388 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
    let x_391 : f32 = u_xlat1.z;
    let x_393 : f32 = x_27.x_UserLut_Params.z;
    let x_395 : f32 = u_xlat15;
    u_xlat15 = ((x_391 * x_393) + -(x_395));
    let x_398 : vec3<f32> = u_xlat3;
    let x_400 : vec4<f32> = u_xlat2;
    let x_402 : vec3<f32> = (-(x_398) + vec3<f32>(x_400.x, x_400.y, x_400.z));
    let x_403 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
    let x_405 : f32 = u_xlat15;
    let x_407 : vec4<f32> = u_xlat2;
    let x_410 : vec3<f32> = u_xlat3;
    let x_411 : vec3<f32> = ((vec3<f32>(x_405, x_405, x_405) * vec3<f32>(x_407.x, x_407.y, x_407.z)) + x_410);
    let x_412 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
    let x_414 : vec3<f32> = u_xlat1;
    let x_416 : vec4<f32> = u_xlat2;
    let x_418 : vec3<f32> = (-(x_414) + vec3<f32>(x_416.x, x_416.y, x_416.z));
    let x_419 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
    let x_422 : vec4<f32> = x_27.x_UserLut_Params;
    let x_424 : vec4<f32> = u_xlat2;
    let x_427 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_422.w, x_422.w, x_422.w) * vec3<f32>(x_424.x, x_424.y, x_424.z)) + x_427);
    let x_429 : vec3<f32> = u_xlat1;
    let x_432 : vec3<f32> = (x_429 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_433 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
    let x_435 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_435 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_439 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_439 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_443 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_443));
    let x_446 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_446 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_450 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_450);
    let x_455 : vec3<f32> = u_xlat1;
    let x_457 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_455.x, x_455.y, x_455.z, x_455.x));
    u_xlatb1 = vec3<bool>(x_457.x, x_457.y, x_457.z);
    let x_460 : bool = u_xlatb1.x;
    if (x_460) {
      let x_465 : f32 = u_xlat2.x;
      x_461 = x_465;
    } else {
      let x_468 : f32 = u_xlat3.x;
      x_461 = x_468;
    }
    let x_469 : f32 = x_461;
    u_xlat0.x = x_469;
    let x_472 : bool = u_xlatb1.y;
    if (x_472) {
      let x_477 : f32 = u_xlat2.y;
      x_473 = x_477;
    } else {
      let x_480 : f32 = u_xlat3.y;
      x_473 = x_480;
    }
    let x_481 : f32 = x_473;
    u_xlat0.y = x_481;
    let x_484 : bool = u_xlatb1.z;
    if (x_484) {
      let x_489 : f32 = u_xlat2.z;
      x_485 = x_489;
    } else {
      let x_492 : f32 = u_xlat3.z;
      x_485 = x_492;
    }
    let x_493 : f32 = x_485;
    u_xlat0.z = x_493;
  }
  let x_495 : vec3<f32> = u_xlat0;
  u_xlat0 = sqrt(x_495);
  let x_497 : vec2<f32> = vs_TEXCOORD0;
  let x_500 : vec4<f32> = x_27.x_Dithering_Params;
  let x_504 : vec4<f32> = x_27.x_Dithering_Params;
  let x_506 : vec2<f32> = ((x_497 * vec2<f32>(x_500.x, x_500.y)) + vec2<f32>(x_504.z, x_504.w));
  let x_507 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_506.x, x_506.y, x_507.z);
  let x_514 : vec3<f32> = u_xlat1;
  let x_517 : f32 = x_27.x_GlobalMipBias.x;
  let x_518 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_514.x, x_514.y), x_517);
  u_xlat15 = x_518.w;
  let x_520 : f32 = u_xlat15;
  u_xlat15 = ((x_520 * 2.0f) + -1.0f);
  let x_525 : f32 = u_xlat15;
  u_xlatb1.x = (x_525 >= 0.0f);
  let x_529 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_529);
  let x_532 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_532)) + 1.0f);
  let x_536 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_536);
  let x_538 : f32 = u_xlat15;
  u_xlat15 = (-(x_538) + 1.0f);
  let x_541 : f32 = u_xlat15;
  let x_543 : f32 = u_xlat1.x;
  u_xlat15 = (x_541 * x_543);
  let x_545 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_545 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_547 : vec3<f32> = u_xlat0;
  let x_548 : vec3<f32> = log2(x_547);
  let x_549 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat2;
  let x_553 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_554 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : vec4<f32> = u_xlat2;
  let x_558 : vec3<f32> = exp2(vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat2;
  let x_564 : vec3<f32> = ((vec3<f32>(x_561.x, x_561.y, x_561.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_565 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_568 : vec3<f32> = u_xlat0;
  let x_570 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_568.x, x_568.y, x_568.z, x_568.x));
  u_xlatb0 = vec3<bool>(x_570.x, x_570.y, x_570.z);
  let x_573 : bool = u_xlatb0.x;
  if (x_573) {
    let x_578 : f32 = u_xlat1.x;
    x_574 = x_578;
  } else {
    let x_581 : f32 = u_xlat2.x;
    x_574 = x_581;
  }
  let x_582 : f32 = x_574;
  u_xlat0.x = x_582;
  let x_585 : bool = u_xlatb0.y;
  if (x_585) {
    let x_590 : f32 = u_xlat1.y;
    x_586 = x_590;
  } else {
    let x_593 : f32 = u_xlat2.y;
    x_586 = x_593;
  }
  let x_594 : f32 = x_586;
  u_xlat0.y = x_594;
  let x_597 : bool = u_xlatb0.z;
  if (x_597) {
    let x_602 : f32 = u_xlat1.z;
    x_598 = x_602;
  } else {
    let x_605 : f32 = u_xlat2.z;
    x_598 = x_605;
  }
  let x_606 : f32 = x_598;
  u_xlat0.z = x_606;
  let x_608 : f32 = u_xlat15;
  let x_613 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_608, x_608, x_608) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_613);
  let x_615 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_615 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_617 : vec3<f32> = u_xlat0;
  let x_618 : vec3<f32> = (x_617 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_619 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec4<f32> = u_xlat2;
  let x_623 : vec3<f32> = (vec3<f32>(x_621.x, x_621.y, x_621.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_624 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat2;
  let x_629 : vec3<f32> = log2(abs(vec3<f32>(x_626.x, x_626.y, x_626.z)));
  let x_630 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat2;
  let x_634 : vec3<f32> = (vec3<f32>(x_632.x, x_632.y, x_632.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_635 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat2;
  let x_639 : vec3<f32> = exp2(vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_640 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec3<f32> = u_xlat0;
  let x_644 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_642.x, x_642.y, x_642.z, x_642.x));
  u_xlatb0 = vec3<bool>(x_644.x, x_644.y, x_644.z);
  let x_647 : bool = u_xlatb0.x;
  if (x_647) {
    let x_652 : f32 = u_xlat1.x;
    x_648 = x_652;
  } else {
    let x_655 : f32 = u_xlat2.x;
    x_648 = x_655;
  }
  let x_656 : f32 = x_648;
  u_xlat0.x = x_656;
  let x_659 : bool = u_xlatb0.y;
  if (x_659) {
    let x_664 : f32 = u_xlat1.y;
    x_660 = x_664;
  } else {
    let x_667 : f32 = u_xlat2.y;
    x_660 = x_667;
  }
  let x_668 : f32 = x_660;
  u_xlat0.y = x_668;
  let x_671 : bool = u_xlatb0.z;
  if (x_671) {
    let x_676 : f32 = u_xlat1.z;
    x_672 = x_676;
  } else {
    let x_679 : f32 = u_xlat2.z;
    x_672 = x_679;
  }
  let x_680 : f32 = x_672;
  u_xlat0.z = x_680;
  let x_684 : vec3<f32> = u_xlat0;
  let x_685 : vec3<f32> = max(x_684, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_686 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
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

