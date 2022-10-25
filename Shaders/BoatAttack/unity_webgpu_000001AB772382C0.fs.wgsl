struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  x_Chroma_Params : f32,
  @size(8)
  padding_1 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_291 : f32;
  var x_303 : f32;
  var x_315 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_465 : f32;
  var x_477 : f32;
  var x_489 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_13.x, x_13.y, x_13.x, x_13.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_24 : vec4<f32> = u_xlat0;
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_24.z, x_24.w), vec2<f32>(x_26.z, x_26.w));
  let x_33 : vec4<f32> = u_xlat0;
  let x_34 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_33 * vec4<f32>(x_34.x, x_34.x, x_34.x, x_34.x));
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : f32 = x_40.x_Chroma_Params;
  u_xlat0 = (x_37 * vec4<f32>(x_45, x_45, x_45, x_45));
  let x_58 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_40.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_58, x_61);
  u_xlat1.x = x_62.x;
  let x_65 : vec4<f32> = u_xlat0;
  let x_70 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_65 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_70.x, x_70.y, x_70.x, x_70.y));
  let x_76 : vec4<f32> = u_xlat0;
  let x_79 : f32 = x_40.x_GlobalMipBias.x;
  let x_80 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_76.x, x_76.y), x_79);
  u_xlat1.y = x_80.y;
  let x_87 : vec4<f32> = u_xlat0;
  let x_90 : f32 = x_40.x_GlobalMipBias.x;
  let x_91 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_87.z, x_87.w), x_90);
  u_xlat1.z = x_91.z;
  let x_99 : vec2<f32> = vs_TEXCOORD0;
  let x_101 : f32 = x_40.x_GlobalMipBias.x;
  let x_102 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, x_99, x_101);
  u_xlat0 = x_102;
  let x_109 : f32 = x_40.x_Bloom_RGBM;
  u_xlatb16 = (0.0f < x_109);
  let x_111 : bool = u_xlatb16;
  if (x_111) {
    let x_115 : vec4<f32> = u_xlat0;
    let x_117 : vec4<f32> = u_xlat0;
    let x_119 : vec3<f32> = (vec3<f32>(x_115.w, x_115.w, x_115.w) * vec3<f32>(x_117.x, x_117.y, x_117.z));
    let x_120 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
    let x_122 : vec4<f32> = u_xlat2;
    let x_126 : vec3<f32> = (vec3<f32>(x_122.x, x_122.y, x_122.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_127 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  }
  let x_129 : vec4<f32> = u_xlat0;
  let x_134 : vec4<f32> = x_40.x_Bloom_Params;
  let x_136 : vec3<f32> = (vec3<f32>(x_129.x, x_129.y, x_129.z) * vec3<f32>(x_134.x, x_134.x, x_134.x));
  let x_137 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : vec4<f32> = u_xlat0;
  let x_142 : vec4<f32> = x_40.x_Bloom_Params;
  let x_145 : vec3<f32> = u_xlat1;
  let x_146 : vec3<f32> = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_142.y, x_142.z, x_142.w)) + x_145);
  let x_147 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_152 : f32 = x_40.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_152);
  let x_154 : bool = u_xlatb15;
  if (x_154) {
    let x_157 : vec2<f32> = vs_TEXCOORD0;
    let x_159 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_162 : vec2<f32> = (x_157 + -(vec2<f32>(x_159.x, x_159.y)));
    let x_163 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_162.x, x_162.y, x_163.z);
    let x_165 : vec3<f32> = u_xlat1;
    let x_169 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_171 : vec2<f32> = (abs(vec2<f32>(x_165.x, x_165.y)) * vec2<f32>(x_169.z, x_169.z));
    let x_172 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_172.x, x_171.x, x_171.y);
    let x_175 : f32 = u_xlat1.y;
    let x_179 : f32 = x_40.x_Vignette_Params1.w;
    u_xlat1.x = (x_175 * x_179);
    let x_183 : vec3<f32> = u_xlat1;
    let x_185 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_183.x, x_183.z), vec2<f32>(x_185.x, x_185.z));
    let x_188 : f32 = u_xlat15;
    u_xlat15 = (-(x_188) + 1.0f);
    let x_192 : f32 = u_xlat15;
    u_xlat15 = max(x_192, 0.0f);
    let x_194 : f32 = u_xlat15;
    u_xlat15 = log2(x_194);
    let x_196 : f32 = u_xlat15;
    let x_198 : f32 = x_40.x_Vignette_Params2.w;
    u_xlat15 = (x_196 * x_198);
    let x_200 : f32 = u_xlat15;
    u_xlat15 = exp2(x_200);
    let x_203 : vec4<f32> = x_40.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_203.x, x_203.y, x_203.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_208 : f32 = u_xlat15;
    let x_210 : vec3<f32> = u_xlat1;
    let x_213 : vec4<f32> = x_40.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_208, x_208, x_208) * x_210) + vec3<f32>(x_213.x, x_213.y, x_213.z));
    let x_216 : vec4<f32> = u_xlat0;
    let x_218 : vec3<f32> = u_xlat1;
    let x_219 : vec3<f32> = (vec3<f32>(x_216.x, x_216.y, x_216.z) * x_218);
    let x_220 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  }
  let x_222 : vec4<f32> = u_xlat0;
  let x_226 : vec4<f32> = x_40.x_Lut_Params;
  let x_228 : vec3<f32> = (vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(x_226.w, x_226.w, x_226.w));
  let x_229 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat0;
  let x_235 : vec3<f32> = clamp(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_236 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_240 : f32 = x_40.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_240);
  let x_242 : bool = u_xlatb15;
  if (x_242) {
    let x_245 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_250 : vec4<f32> = u_xlat0;
    let x_252 : vec3<f32> = log2(vec3<f32>(x_250.x, x_250.y, x_250.z));
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
    let x_282 : vec4<f32> = u_xlat0;
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
    let x_329 : vec4<f32> = x_40.x_UserLut_Params;
    let x_331 : vec3<f32> = (vec3<f32>(x_326.z, x_326.x, x_326.y) * vec3<f32>(x_329.z, x_329.z, x_329.z));
    let x_332 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
    let x_335 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_335);
    let x_338 : vec4<f32> = x_40.x_UserLut_Params;
    let x_342 : vec2<f32> = (vec2<f32>(x_338.x, x_338.y) * vec2<f32>(0.5f, 0.5f));
    let x_343 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_342.x, x_343.y, x_343.z, x_342.y);
    let x_345 : vec4<f32> = u_xlat2;
    let x_348 : vec4<f32> = x_40.x_UserLut_Params;
    let x_351 : vec4<f32> = u_xlat2;
    let x_353 : vec2<f32> = ((vec2<f32>(x_345.y, x_345.z) * vec2<f32>(x_348.x, x_348.y)) + vec2<f32>(x_351.x, x_351.w));
    let x_354 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_354.x, x_353.x, x_353.y, x_354.w);
    let x_356 : f32 = u_xlat15;
    let x_358 : f32 = x_40.x_UserLut_Params.y;
    let x_361 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_356 * x_358) + x_361);
    let x_369 : vec4<f32> = u_xlat2;
    let x_371 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_369.x, x_369.z), 0.0f);
    u_xlat3 = vec3<f32>(x_371.x, x_371.y, x_371.z);
    let x_376 : f32 = x_40.x_UserLut_Params.y;
    u_xlat4.x = x_376;
    u_xlat4.y = 0.0f;
    let x_379 : vec4<f32> = u_xlat2;
    let x_381 : vec2<f32> = u_xlat4;
    let x_382 : vec2<f32> = (vec2<f32>(x_379.x, x_379.z) + x_381);
    let x_383 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
    let x_388 : vec4<f32> = u_xlat2;
    let x_390 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_388.x, x_388.y), 0.0f);
    let x_391 : vec3<f32> = vec3<f32>(x_390.x, x_390.y, x_390.z);
    let x_392 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
    let x_395 : f32 = u_xlat1.z;
    let x_397 : f32 = x_40.x_UserLut_Params.z;
    let x_399 : f32 = u_xlat15;
    u_xlat15 = ((x_395 * x_397) + -(x_399));
    let x_402 : vec3<f32> = u_xlat3;
    let x_404 : vec4<f32> = u_xlat2;
    let x_406 : vec3<f32> = (-(x_402) + vec3<f32>(x_404.x, x_404.y, x_404.z));
    let x_407 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
    let x_409 : f32 = u_xlat15;
    let x_411 : vec4<f32> = u_xlat2;
    let x_414 : vec3<f32> = u_xlat3;
    let x_415 : vec3<f32> = ((vec3<f32>(x_409, x_409, x_409) * vec3<f32>(x_411.x, x_411.y, x_411.z)) + x_414);
    let x_416 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
    let x_418 : vec3<f32> = u_xlat1;
    let x_420 : vec4<f32> = u_xlat2;
    let x_422 : vec3<f32> = (-(x_418) + vec3<f32>(x_420.x, x_420.y, x_420.z));
    let x_423 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
    let x_426 : vec4<f32> = x_40.x_UserLut_Params;
    let x_428 : vec4<f32> = u_xlat2;
    let x_431 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_426.w, x_426.w, x_426.w) * vec3<f32>(x_428.x, x_428.y, x_428.z)) + x_431);
    let x_433 : vec3<f32> = u_xlat1;
    let x_436 : vec3<f32> = (x_433 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_437 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
    let x_439 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_439 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_443 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_443 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_447 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_447));
    let x_450 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_450 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_454 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_454);
    let x_459 : vec3<f32> = u_xlat1;
    let x_461 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_459.x, x_459.y, x_459.z, x_459.x));
    u_xlatb1 = vec3<bool>(x_461.x, x_461.y, x_461.z);
    let x_464 : bool = u_xlatb1.x;
    if (x_464) {
      let x_469 : f32 = u_xlat2.x;
      x_465 = x_469;
    } else {
      let x_472 : f32 = u_xlat3.x;
      x_465 = x_472;
    }
    let x_473 : f32 = x_465;
    u_xlat0.x = x_473;
    let x_476 : bool = u_xlatb1.y;
    if (x_476) {
      let x_481 : f32 = u_xlat2.y;
      x_477 = x_481;
    } else {
      let x_484 : f32 = u_xlat3.y;
      x_477 = x_484;
    }
    let x_485 : f32 = x_477;
    u_xlat0.y = x_485;
    let x_488 : bool = u_xlatb1.z;
    if (x_488) {
      let x_493 : f32 = u_xlat2.z;
      x_489 = x_493;
    } else {
      let x_496 : f32 = u_xlat3.z;
      x_489 = x_496;
    }
    let x_497 : f32 = x_489;
    u_xlat0.z = x_497;
  }
  let x_499 : vec4<f32> = u_xlat0;
  let x_502 : vec4<f32> = x_40.x_Lut_Params;
  let x_504 : vec3<f32> = (vec3<f32>(x_499.x, x_499.y, x_499.z) * vec3<f32>(x_502.z, x_502.z, x_502.z));
  let x_505 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_504.x, x_504.y, x_505.z, x_504.z);
  let x_508 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_508);
  let x_511 : vec4<f32> = x_40.x_Lut_Params;
  let x_513 : vec2<f32> = (vec2<f32>(x_511.x, x_511.y) * vec2<f32>(0.5f, 0.5f));
  let x_514 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_513.x, x_513.y, x_514.z);
  let x_516 : vec4<f32> = u_xlat0;
  let x_519 : vec4<f32> = x_40.x_Lut_Params;
  let x_522 : vec3<f32> = u_xlat1;
  let x_524 : vec2<f32> = ((vec2<f32>(x_516.x, x_516.y) * vec2<f32>(x_519.x, x_519.y)) + vec2<f32>(x_522.x, x_522.y));
  let x_525 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_525.x, x_524.x, x_524.y);
  let x_527 : f32 = u_xlat15;
  let x_529 : f32 = x_40.x_Lut_Params.y;
  let x_532 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_527 * x_529) + x_532);
  let x_539 : vec3<f32> = u_xlat1;
  let x_541 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_539.x, x_539.z), 0.0f);
  let x_542 : vec3<f32> = vec3<f32>(x_541.x, x_541.y, x_541.z);
  let x_543 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_546 : f32 = x_40.x_Lut_Params.y;
  u_xlat0.x = x_546;
  u_xlat0.y = 0.0f;
  let x_549 : vec4<f32> = u_xlat0;
  let x_551 : vec3<f32> = u_xlat1;
  let x_553 : vec2<f32> = (vec2<f32>(x_549.x, x_549.y) + vec2<f32>(x_551.x, x_551.z));
  let x_554 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_553.x, x_553.y, x_554.z, x_554.w);
  let x_559 : vec4<f32> = u_xlat0;
  let x_561 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_559.x, x_559.y), 0.0f);
  u_xlat1 = vec3<f32>(x_561.x, x_561.y, x_561.z);
  let x_564 : f32 = u_xlat0.z;
  let x_566 : f32 = x_40.x_Lut_Params.z;
  let x_568 : f32 = u_xlat15;
  u_xlat0.x = ((x_564 * x_566) + -(x_568));
  let x_573 : vec4<f32> = u_xlat2;
  let x_576 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_573.x, x_573.y, x_573.z)) + x_576);
  let x_580 : vec4<f32> = u_xlat0;
  let x_582 : vec3<f32> = u_xlat5;
  let x_584 : vec4<f32> = u_xlat2;
  let x_586 : vec3<f32> = ((vec3<f32>(x_580.x, x_580.x, x_580.x) * x_582) + vec3<f32>(x_584.x, x_584.y, x_584.z));
  let x_587 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
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

