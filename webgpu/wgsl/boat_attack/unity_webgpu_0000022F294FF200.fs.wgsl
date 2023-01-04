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

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_251 : f32;
  var x_263 : f32;
  var x_275 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_425 : f32;
  var x_437 : f32;
  var x_449 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_579 : f32;
  var x_591 : f32;
  var x_603 : f32;
  var x_692 : f32;
  var x_704 : f32;
  var x_716 : f32;
  var x_771 : f32;
  var x_783 : f32;
  var x_795 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_33);
  let x_36 : vec3<f32> = vec3<f32>(x_34.x, x_34.y, x_34.z);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  let x_46 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_46);
  let x_48 : bool = u_xlatb15;
  if (x_48) {
    let x_53 : vec2<f32> = vs_TEXCOORD0;
    let x_56 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_59 : vec2<f32> = (x_53 + -(vec2<f32>(x_56.x, x_56.y)));
    let x_60 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_59.x, x_59.y, x_60.z);
    let x_62 : vec3<f32> = u_xlat1;
    let x_66 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_68 : vec2<f32> = (abs(vec2<f32>(x_62.x, x_62.y)) * vec2<f32>(x_66.z, x_66.z));
    let x_69 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_69.x, x_68.x, x_68.y);
    let x_74 : f32 = u_xlat1.y;
    let x_78 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_74 * x_78);
    let x_82 : vec3<f32> = u_xlat1;
    let x_84 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_82.x, x_82.z), vec2<f32>(x_84.x, x_84.z));
    let x_87 : f32 = u_xlat15;
    u_xlat15 = (-(x_87) + 1.0f);
    let x_91 : f32 = u_xlat15;
    u_xlat15 = max(x_91, 0.0f);
    let x_93 : f32 = u_xlat15;
    u_xlat15 = log2(x_93);
    let x_95 : f32 = u_xlat15;
    let x_97 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat15 = (x_95 * x_97);
    let x_99 : f32 = u_xlat15;
    u_xlat15 = exp2(x_99);
    let x_102 : vec4<f32> = x_26.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_102.x, x_102.y, x_102.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_107 : f32 = u_xlat15;
    let x_109 : vec3<f32> = u_xlat1;
    let x_112 : vec4<f32> = x_26.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_107, x_107, x_107) * x_109) + vec3<f32>(x_112.x, x_112.y, x_112.z));
    let x_115 : vec4<f32> = u_xlat0;
    let x_117 : vec3<f32> = u_xlat1;
    let x_118 : vec3<f32> = (vec3<f32>(x_115.x, x_115.y, x_115.z) * x_117);
    let x_119 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  }
  let x_121 : vec4<f32> = u_xlat0;
  let x_125 : vec4<f32> = x_26.x_Lut_Params;
  let x_127 : vec3<f32> = (vec3<f32>(x_121.x, x_121.y, x_121.z) * vec3<f32>(x_125.w, x_125.w, x_125.w));
  let x_128 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_130.x, x_130.y, x_130.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_136 : vec4<f32> = u_xlat0;
  let x_143 : vec3<f32> = ((vec3<f32>(x_136.x, x_136.y, x_136.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_144 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_146 : vec3<f32> = u_xlat1;
  let x_147 : vec4<f32> = u_xlat2;
  let x_152 : vec3<f32> = ((x_146 * vec3<f32>(x_147.x, x_147.y, x_147.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_153 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_155 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_163 : vec3<f32> = u_xlat1;
  let x_164 : vec4<f32> = u_xlat0;
  let x_169 : vec3<f32> = ((x_163 * vec3<f32>(x_164.x, x_164.y, x_164.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_172 : vec4<f32> = u_xlat2;
  let x_174 : vec4<f32> = u_xlat0;
  let x_176 : vec3<f32> = (vec3<f32>(x_172.x, x_172.y, x_172.z) / vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_179 : vec4<f32> = u_xlat0;
  let x_183 : vec3<f32> = (vec3<f32>(x_179.x, x_179.y, x_179.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_186 : vec4<f32> = u_xlat0;
  let x_188 : vec3<f32> = (vec3<f32>(x_186.x, x_186.y, x_186.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_191 : vec4<f32> = u_xlat0;
  let x_195 : vec3<f32> = clamp(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_200 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_200);
  let x_202 : bool = u_xlatb15;
  if (x_202) {
    let x_205 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_205.x, x_205.y, x_205.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_210 : vec4<f32> = u_xlat0;
    let x_212 : vec3<f32> = log2(vec3<f32>(x_210.x, x_210.y, x_210.z));
    let x_213 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
    let x_215 : vec4<f32> = u_xlat2;
    let x_219 : vec3<f32> = (vec3<f32>(x_215.x, x_215.y, x_215.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_220 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
    let x_222 : vec4<f32> = u_xlat2;
    let x_224 : vec3<f32> = exp2(vec3<f32>(x_222.x, x_222.y, x_222.z));
    let x_225 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
    let x_227 : vec4<f32> = u_xlat2;
    let x_234 : vec3<f32> = ((vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_235 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
    let x_242 : vec4<f32> = u_xlat0;
    let x_245 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_242.x, x_242.y, x_242.z, x_242.x));
    u_xlatb3 = vec3<bool>(x_245.x, x_245.y, x_245.z);
    let x_248 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_248;
    let x_250 : bool = u_xlatb3.x;
    if (x_250) {
      let x_255 : f32 = u_xlat1.x;
      x_251 = x_255;
    } else {
      let x_258 : f32 = u_xlat2.x;
      x_251 = x_258;
    }
    let x_259 : f32 = x_251;
    hlslcc_movcTemp.x = x_259;
    let x_262 : bool = u_xlatb3.y;
    if (x_262) {
      let x_267 : f32 = u_xlat1.y;
      x_263 = x_267;
    } else {
      let x_270 : f32 = u_xlat2.y;
      x_263 = x_270;
    }
    let x_271 : f32 = x_263;
    hlslcc_movcTemp.y = x_271;
    let x_274 : bool = u_xlatb3.z;
    if (x_274) {
      let x_279 : f32 = u_xlat1.z;
      x_275 = x_279;
    } else {
      let x_282 : f32 = u_xlat2.z;
      x_275 = x_282;
    }
    let x_283 : f32 = x_275;
    hlslcc_movcTemp.z = x_283;
    let x_285 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_285;
    let x_286 : vec3<f32> = u_xlat1;
    let x_289 : vec4<f32> = x_26.x_UserLut_Params;
    let x_291 : vec3<f32> = (vec3<f32>(x_286.z, x_286.x, x_286.y) * vec3<f32>(x_289.z, x_289.z, x_289.z));
    let x_292 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
    let x_295 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_295);
    let x_298 : vec4<f32> = x_26.x_UserLut_Params;
    let x_302 : vec2<f32> = (vec2<f32>(x_298.x, x_298.y) * vec2<f32>(0.5f, 0.5f));
    let x_303 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_302.x, x_303.y, x_303.z, x_302.y);
    let x_305 : vec4<f32> = u_xlat2;
    let x_308 : vec4<f32> = x_26.x_UserLut_Params;
    let x_311 : vec4<f32> = u_xlat2;
    let x_313 : vec2<f32> = ((vec2<f32>(x_305.y, x_305.z) * vec2<f32>(x_308.x, x_308.y)) + vec2<f32>(x_311.x, x_311.w));
    let x_314 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_314.x, x_313.x, x_313.y, x_314.w);
    let x_316 : f32 = u_xlat15;
    let x_318 : f32 = x_26.x_UserLut_Params.y;
    let x_321 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_316 * x_318) + x_321);
    let x_329 : vec4<f32> = u_xlat2;
    let x_331 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_329.x, x_329.z), 0.0f);
    u_xlat3 = vec3<f32>(x_331.x, x_331.y, x_331.z);
    let x_336 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_336;
    u_xlat4.y = 0.0f;
    let x_339 : vec4<f32> = u_xlat2;
    let x_341 : vec2<f32> = u_xlat4;
    let x_342 : vec2<f32> = (vec2<f32>(x_339.x, x_339.z) + x_341);
    let x_343 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_342.x, x_342.y, x_343.z, x_343.w);
    let x_348 : vec4<f32> = u_xlat2;
    let x_350 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_348.x, x_348.y), 0.0f);
    let x_351 : vec3<f32> = vec3<f32>(x_350.x, x_350.y, x_350.z);
    let x_352 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
    let x_355 : f32 = u_xlat1.z;
    let x_357 : f32 = x_26.x_UserLut_Params.z;
    let x_359 : f32 = u_xlat15;
    u_xlat15 = ((x_355 * x_357) + -(x_359));
    let x_362 : vec3<f32> = u_xlat3;
    let x_364 : vec4<f32> = u_xlat2;
    let x_366 : vec3<f32> = (-(x_362) + vec3<f32>(x_364.x, x_364.y, x_364.z));
    let x_367 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
    let x_369 : f32 = u_xlat15;
    let x_371 : vec4<f32> = u_xlat2;
    let x_374 : vec3<f32> = u_xlat3;
    let x_375 : vec3<f32> = ((vec3<f32>(x_369, x_369, x_369) * vec3<f32>(x_371.x, x_371.y, x_371.z)) + x_374);
    let x_376 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
    let x_378 : vec3<f32> = u_xlat1;
    let x_380 : vec4<f32> = u_xlat2;
    let x_382 : vec3<f32> = (-(x_378) + vec3<f32>(x_380.x, x_380.y, x_380.z));
    let x_383 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
    let x_386 : vec4<f32> = x_26.x_UserLut_Params;
    let x_388 : vec4<f32> = u_xlat2;
    let x_391 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_386.w, x_386.w, x_386.w) * vec3<f32>(x_388.x, x_388.y, x_388.z)) + x_391);
    let x_393 : vec3<f32> = u_xlat1;
    let x_396 : vec3<f32> = (x_393 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_397 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
    let x_399 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_399 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_403 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_403 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_407 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_407));
    let x_410 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_410 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_414 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_414);
    let x_419 : vec3<f32> = u_xlat1;
    let x_421 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_419.x, x_419.y, x_419.z, x_419.x));
    u_xlatb1 = vec3<bool>(x_421.x, x_421.y, x_421.z);
    let x_424 : bool = u_xlatb1.x;
    if (x_424) {
      let x_429 : f32 = u_xlat2.x;
      x_425 = x_429;
    } else {
      let x_432 : f32 = u_xlat3.x;
      x_425 = x_432;
    }
    let x_433 : f32 = x_425;
    u_xlat0.x = x_433;
    let x_436 : bool = u_xlatb1.y;
    if (x_436) {
      let x_441 : f32 = u_xlat2.y;
      x_437 = x_441;
    } else {
      let x_444 : f32 = u_xlat3.y;
      x_437 = x_444;
    }
    let x_445 : f32 = x_437;
    u_xlat0.y = x_445;
    let x_448 : bool = u_xlatb1.z;
    if (x_448) {
      let x_453 : f32 = u_xlat2.z;
      x_449 = x_453;
    } else {
      let x_456 : f32 = u_xlat3.z;
      x_449 = x_456;
    }
    let x_457 : f32 = x_449;
    u_xlat0.z = x_457;
  }
  let x_459 : vec4<f32> = u_xlat0;
  let x_462 : vec4<f32> = x_26.x_Lut_Params;
  let x_464 : vec3<f32> = (vec3<f32>(x_459.x, x_459.y, x_459.z) * vec3<f32>(x_462.z, x_462.z, x_462.z));
  let x_465 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_464.z);
  let x_468 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_468);
  let x_471 : vec4<f32> = x_26.x_Lut_Params;
  let x_473 : vec2<f32> = (vec2<f32>(x_471.x, x_471.y) * vec2<f32>(0.5f, 0.5f));
  let x_474 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_473.x, x_473.y, x_474.z);
  let x_476 : vec4<f32> = u_xlat0;
  let x_479 : vec4<f32> = x_26.x_Lut_Params;
  let x_482 : vec3<f32> = u_xlat1;
  let x_484 : vec2<f32> = ((vec2<f32>(x_476.x, x_476.y) * vec2<f32>(x_479.x, x_479.y)) + vec2<f32>(x_482.x, x_482.y));
  let x_485 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_485.x, x_484.x, x_484.y);
  let x_487 : f32 = u_xlat15;
  let x_489 : f32 = x_26.x_Lut_Params.y;
  let x_492 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_487 * x_489) + x_492);
  let x_499 : vec3<f32> = u_xlat1;
  let x_501 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_499.x, x_499.z), 0.0f);
  let x_502 : vec3<f32> = vec3<f32>(x_501.x, x_501.y, x_501.z);
  let x_503 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_506 : f32 = x_26.x_Lut_Params.y;
  u_xlat0.x = x_506;
  u_xlat0.y = 0.0f;
  let x_509 : vec4<f32> = u_xlat0;
  let x_511 : vec3<f32> = u_xlat1;
  let x_513 : vec2<f32> = (vec2<f32>(x_509.x, x_509.y) + vec2<f32>(x_511.x, x_511.z));
  let x_514 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
  let x_519 : vec4<f32> = u_xlat0;
  let x_521 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_519.x, x_519.y), 0.0f);
  u_xlat1 = vec3<f32>(x_521.x, x_521.y, x_521.z);
  let x_524 : f32 = u_xlat0.z;
  let x_526 : f32 = x_26.x_Lut_Params.z;
  let x_528 : f32 = u_xlat15;
  u_xlat0.x = ((x_524 * x_526) + -(x_528));
  let x_533 : vec4<f32> = u_xlat2;
  let x_536 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_533.x, x_533.y, x_533.z)) + x_536);
  let x_538 : vec4<f32> = u_xlat0;
  let x_540 : vec3<f32> = u_xlat5;
  let x_542 : vec4<f32> = u_xlat2;
  let x_544 : vec3<f32> = ((vec3<f32>(x_538.x, x_538.x, x_538.x) * x_540) + vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_547.x, x_547.y, x_547.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_550 : vec4<f32> = u_xlat0;
  let x_553 : vec3<f32> = log2(abs(vec3<f32>(x_550.x, x_550.y, x_550.z)));
  let x_554 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : vec4<f32> = u_xlat2;
  let x_558 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_559 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat2;
  let x_563 : vec3<f32> = exp2(vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_564 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_566 : vec4<f32> = u_xlat2;
  let x_569 : vec3<f32> = ((vec3<f32>(x_566.x, x_566.y, x_566.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_570 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_573 : vec4<f32> = u_xlat0;
  let x_575 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_573.x, x_573.y, x_573.z, x_573.x));
  u_xlatb0 = vec3<bool>(x_575.x, x_575.y, x_575.z);
  let x_578 : bool = u_xlatb0.x;
  if (x_578) {
    let x_583 : f32 = u_xlat1.x;
    x_579 = x_583;
  } else {
    let x_586 : f32 = u_xlat2.x;
    x_579 = x_586;
  }
  let x_587 : f32 = x_579;
  u_xlat0.x = x_587;
  let x_590 : bool = u_xlatb0.y;
  if (x_590) {
    let x_595 : f32 = u_xlat1.y;
    x_591 = x_595;
  } else {
    let x_598 : f32 = u_xlat2.y;
    x_591 = x_598;
  }
  let x_599 : f32 = x_591;
  u_xlat0.y = x_599;
  let x_602 : bool = u_xlatb0.z;
  if (x_602) {
    let x_607 : f32 = u_xlat1.z;
    x_603 = x_607;
  } else {
    let x_610 : f32 = u_xlat2.z;
    x_603 = x_610;
  }
  let x_611 : f32 = x_603;
  u_xlat0.z = x_611;
  let x_613 : vec2<f32> = vs_TEXCOORD0;
  let x_616 : vec4<f32> = x_26.x_Dithering_Params;
  let x_620 : vec4<f32> = x_26.x_Dithering_Params;
  let x_622 : vec2<f32> = ((x_613 * vec2<f32>(x_616.x, x_616.y)) + vec2<f32>(x_620.z, x_620.w));
  let x_623 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_622.x, x_622.y, x_623.z);
  let x_630 : vec3<f32> = u_xlat1;
  let x_633 : f32 = x_26.x_GlobalMipBias.x;
  let x_634 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_630.x, x_630.y), x_633);
  u_xlat15 = x_634.w;
  let x_636 : f32 = u_xlat15;
  u_xlat15 = ((x_636 * 2.0f) + -1.0f);
  let x_641 : f32 = u_xlat15;
  u_xlatb1.x = (x_641 >= 0.0f);
  let x_645 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_645);
  let x_648 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_648)) + 1.0f);
  let x_652 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_652);
  let x_654 : f32 = u_xlat15;
  u_xlat15 = (-(x_654) + 1.0f);
  let x_657 : f32 = u_xlat15;
  let x_659 : f32 = u_xlat1.x;
  u_xlat15 = (x_657 * x_659);
  let x_661 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_661.x, x_661.y, x_661.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_664 : vec4<f32> = u_xlat0;
  let x_667 : vec3<f32> = log2(abs(vec3<f32>(x_664.x, x_664.y, x_664.z)));
  let x_668 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat2;
  let x_672 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_673 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat2;
  let x_677 : vec3<f32> = exp2(vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec4<f32> = u_xlat2;
  let x_683 : vec3<f32> = ((vec3<f32>(x_680.x, x_680.y, x_680.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_684 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat0;
  let x_688 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_686.x, x_686.y, x_686.z, x_686.x));
  u_xlatb0 = vec3<bool>(x_688.x, x_688.y, x_688.z);
  let x_691 : bool = u_xlatb0.x;
  if (x_691) {
    let x_696 : f32 = u_xlat1.x;
    x_692 = x_696;
  } else {
    let x_699 : f32 = u_xlat2.x;
    x_692 = x_699;
  }
  let x_700 : f32 = x_692;
  u_xlat0.x = x_700;
  let x_703 : bool = u_xlatb0.y;
  if (x_703) {
    let x_708 : f32 = u_xlat1.y;
    x_704 = x_708;
  } else {
    let x_711 : f32 = u_xlat2.y;
    x_704 = x_711;
  }
  let x_712 : f32 = x_704;
  u_xlat0.y = x_712;
  let x_715 : bool = u_xlatb0.z;
  if (x_715) {
    let x_720 : f32 = u_xlat1.z;
    x_716 = x_720;
  } else {
    let x_723 : f32 = u_xlat2.z;
    x_716 = x_723;
  }
  let x_724 : f32 = x_716;
  u_xlat0.z = x_724;
  let x_726 : f32 = u_xlat15;
  let x_731 : vec4<f32> = u_xlat0;
  let x_733 : vec3<f32> = ((vec3<f32>(x_726, x_726, x_726) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_731.x, x_731.y, x_731.z));
  let x_734 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
  let x_736 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_736.x, x_736.y, x_736.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_739 : vec4<f32> = u_xlat0;
  let x_741 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_742 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : vec4<f32> = u_xlat2;
  let x_746 : vec3<f32> = (vec3<f32>(x_744.x, x_744.y, x_744.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_747 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  let x_749 : vec4<f32> = u_xlat2;
  let x_752 : vec3<f32> = log2(abs(vec3<f32>(x_749.x, x_749.y, x_749.z)));
  let x_753 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat2;
  let x_757 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_758 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat2;
  let x_762 : vec3<f32> = exp2(vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : vec4<f32> = u_xlat0;
  let x_767 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_765.x, x_765.y, x_765.z, x_765.x));
  u_xlatb0 = vec3<bool>(x_767.x, x_767.y, x_767.z);
  let x_770 : bool = u_xlatb0.x;
  if (x_770) {
    let x_775 : f32 = u_xlat1.x;
    x_771 = x_775;
  } else {
    let x_778 : f32 = u_xlat2.x;
    x_771 = x_778;
  }
  let x_779 : f32 = x_771;
  u_xlat0.x = x_779;
  let x_782 : bool = u_xlatb0.y;
  if (x_782) {
    let x_787 : f32 = u_xlat1.y;
    x_783 = x_787;
  } else {
    let x_790 : f32 = u_xlat2.y;
    x_783 = x_790;
  }
  let x_791 : f32 = x_783;
  u_xlat0.y = x_791;
  let x_794 : bool = u_xlatb0.z;
  if (x_794) {
    let x_799 : f32 = u_xlat1.z;
    x_795 = x_799;
  } else {
    let x_802 : f32 = u_xlat2.z;
    x_795 = x_802;
  }
  let x_803 : f32 = x_795;
  u_xlat0.z = x_803;
  let x_807 : vec4<f32> = u_xlat0;
  let x_810 : vec3<f32> = max(vec3<f32>(x_807.x, x_807.y, x_807.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_811 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
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

