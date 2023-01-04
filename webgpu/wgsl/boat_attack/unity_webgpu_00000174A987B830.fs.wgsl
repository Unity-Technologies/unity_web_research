struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  @size(12)
  padding_1 : u32,
  x_LensDirt_Params : vec4<f32>,
  x_LensDirt_Intensity : f32,
  @size(12)
  padding_2 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_290 : f32;
  var x_302 : f32;
  var x_314 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_471 : f32;
  var x_483 : f32;
  var x_495 : f32;
  var u_xlat5 : vec3<f32>;
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
  let x_44 : vec2<f32> = vs_TEXCOORD0;
  let x_46 : f32 = x_26.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, x_44, x_46);
  u_xlat1 = x_47;
  let x_54 : f32 = x_26.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_54);
  let x_56 : bool = u_xlatb15;
  if (x_56) {
    let x_60 : vec4<f32> = u_xlat1;
    let x_62 : vec4<f32> = u_xlat1;
    let x_64 : vec3<f32> = (vec3<f32>(x_60.w, x_60.w, x_60.w) * vec3<f32>(x_62.x, x_62.y, x_62.z));
    let x_65 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_64.x, x_64.y, x_64.z, x_65.w);
    let x_67 : vec4<f32> = u_xlat2;
    let x_71 : vec3<f32> = (vec3<f32>(x_67.x, x_67.y, x_67.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_72 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_71.z, x_72.w);
  }
  let x_74 : vec4<f32> = u_xlat1;
  let x_79 : vec4<f32> = x_26.x_Bloom_Params;
  let x_81 : vec3<f32> = (vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_79.x, x_79.x, x_79.x));
  let x_82 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_84 : vec4<f32> = u_xlat1;
  let x_87 : vec4<f32> = x_26.x_Bloom_Params;
  let x_90 : vec4<f32> = u_xlat0;
  let x_92 : vec3<f32> = ((vec3<f32>(x_84.x, x_84.y, x_84.z) * vec3<f32>(x_87.y, x_87.z, x_87.w)) + vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_95 : vec2<f32> = vs_TEXCOORD0;
  let x_98 : vec4<f32> = x_26.x_LensDirt_Params;
  let x_102 : vec4<f32> = x_26.x_LensDirt_Params;
  let x_104 : vec2<f32> = ((x_95 * vec2<f32>(x_98.x, x_98.y)) + vec2<f32>(x_102.z, x_102.w));
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
  let x_111 : vec4<f32> = u_xlat2;
  let x_114 : f32 = x_26.x_GlobalMipBias.x;
  let x_115 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_111.x, x_111.y), x_114);
  let x_116 : vec3<f32> = vec3<f32>(x_115.x, x_115.y, x_115.z);
  let x_117 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_119 : vec4<f32> = u_xlat2;
  let x_123 : f32 = x_26.x_LensDirt_Intensity;
  let x_125 : vec3<f32> = (vec3<f32>(x_119.x, x_119.y, x_119.z) * vec3<f32>(x_123, x_123, x_123));
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_128 : vec4<f32> = u_xlat2;
  let x_130 : vec4<f32> = u_xlat1;
  let x_133 : vec4<f32> = u_xlat0;
  let x_135 : vec3<f32> = ((vec3<f32>(x_128.x, x_128.y, x_128.z) * vec3<f32>(x_130.x, x_130.y, x_130.z)) + vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_141 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_141);
  let x_143 : bool = u_xlatb15;
  if (x_143) {
    let x_146 : vec2<f32> = vs_TEXCOORD0;
    let x_148 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_151 : vec2<f32> = (x_146 + -(vec2<f32>(x_148.x, x_148.y)));
    let x_152 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_151.x, x_151.y, x_152.z, x_152.w);
    let x_154 : vec4<f32> = u_xlat1;
    let x_158 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_160 : vec2<f32> = (abs(vec2<f32>(x_154.x, x_154.y)) * vec2<f32>(x_158.z, x_158.z));
    let x_161 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_161.x, x_160.x, x_160.y, x_161.w);
    let x_166 : f32 = u_xlat1.y;
    let x_170 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_166 * x_170);
    let x_174 : vec4<f32> = u_xlat1;
    let x_176 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_174.x, x_174.z), vec2<f32>(x_176.x, x_176.z));
    let x_179 : f32 = u_xlat15;
    u_xlat15 = (-(x_179) + 1.0f);
    let x_183 : f32 = u_xlat15;
    u_xlat15 = max(x_183, 0.0f);
    let x_185 : f32 = u_xlat15;
    u_xlat15 = log2(x_185);
    let x_187 : f32 = u_xlat15;
    let x_189 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat15 = (x_187 * x_189);
    let x_191 : f32 = u_xlat15;
    u_xlat15 = exp2(x_191);
    let x_194 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_198 : vec3<f32> = (-(vec3<f32>(x_194.x, x_194.y, x_194.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_199 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
    let x_201 : f32 = u_xlat15;
    let x_203 : vec4<f32> = u_xlat1;
    let x_207 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_209 : vec3<f32> = ((vec3<f32>(x_201, x_201, x_201) * vec3<f32>(x_203.x, x_203.y, x_203.z)) + vec3<f32>(x_207.x, x_207.y, x_207.z));
    let x_210 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
    let x_212 : vec4<f32> = u_xlat0;
    let x_214 : vec4<f32> = u_xlat1;
    let x_216 : vec3<f32> = (vec3<f32>(x_212.x, x_212.y, x_212.z) * vec3<f32>(x_214.x, x_214.y, x_214.z));
    let x_217 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  }
  let x_219 : vec4<f32> = u_xlat0;
  let x_223 : vec4<f32> = x_26.x_Lut_Params;
  let x_225 : vec3<f32> = (vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_223.w, x_223.w, x_223.w));
  let x_226 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : vec4<f32> = u_xlat0;
  let x_232 : vec3<f32> = clamp(vec3<f32>(x_228.x, x_228.y, x_228.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_233 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_237 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_237);
  let x_239 : bool = u_xlatb15;
  if (x_239) {
    let x_242 : vec4<f32> = u_xlat0;
    let x_246 : vec3<f32> = (vec3<f32>(x_242.x, x_242.y, x_242.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_247 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
    let x_249 : vec4<f32> = u_xlat0;
    let x_251 : vec3<f32> = log2(vec3<f32>(x_249.x, x_249.y, x_249.z));
    let x_252 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
    let x_254 : vec4<f32> = u_xlat2;
    let x_258 : vec3<f32> = (vec3<f32>(x_254.x, x_254.y, x_254.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_259 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_261 : vec4<f32> = u_xlat2;
    let x_263 : vec3<f32> = exp2(vec3<f32>(x_261.x, x_261.y, x_261.z));
    let x_264 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
    let x_266 : vec4<f32> = u_xlat2;
    let x_273 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_274 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_281 : vec4<f32> = u_xlat0;
    let x_284 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_281.x, x_281.y, x_281.z, x_281.x));
    u_xlatb3 = vec3<bool>(x_284.x, x_284.y, x_284.z);
    let x_287 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_287;
    let x_289 : bool = u_xlatb3.x;
    if (x_289) {
      let x_294 : f32 = u_xlat1.x;
      x_290 = x_294;
    } else {
      let x_297 : f32 = u_xlat2.x;
      x_290 = x_297;
    }
    let x_298 : f32 = x_290;
    hlslcc_movcTemp.x = x_298;
    let x_301 : bool = u_xlatb3.y;
    if (x_301) {
      let x_306 : f32 = u_xlat1.y;
      x_302 = x_306;
    } else {
      let x_309 : f32 = u_xlat2.y;
      x_302 = x_309;
    }
    let x_310 : f32 = x_302;
    hlslcc_movcTemp.y = x_310;
    let x_313 : bool = u_xlatb3.z;
    if (x_313) {
      let x_318 : f32 = u_xlat1.z;
      x_314 = x_318;
    } else {
      let x_321 : f32 = u_xlat2.z;
      x_314 = x_321;
    }
    let x_322 : f32 = x_314;
    hlslcc_movcTemp.z = x_322;
    let x_324 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_324;
    let x_325 : vec4<f32> = u_xlat1;
    let x_328 : vec4<f32> = x_26.x_UserLut_Params;
    let x_330 : vec3<f32> = (vec3<f32>(x_325.z, x_325.x, x_325.y) * vec3<f32>(x_328.z, x_328.z, x_328.z));
    let x_331 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
    let x_334 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_334);
    let x_337 : vec4<f32> = x_26.x_UserLut_Params;
    let x_341 : vec2<f32> = (vec2<f32>(x_337.x, x_337.y) * vec2<f32>(0.5f, 0.5f));
    let x_342 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_341.x, x_342.y, x_342.z, x_341.y);
    let x_344 : vec4<f32> = u_xlat2;
    let x_347 : vec4<f32> = x_26.x_UserLut_Params;
    let x_350 : vec4<f32> = u_xlat2;
    let x_352 : vec2<f32> = ((vec2<f32>(x_344.y, x_344.z) * vec2<f32>(x_347.x, x_347.y)) + vec2<f32>(x_350.x, x_350.w));
    let x_353 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_353.x, x_352.x, x_352.y, x_353.w);
    let x_355 : f32 = u_xlat15;
    let x_357 : f32 = x_26.x_UserLut_Params.y;
    let x_360 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_355 * x_357) + x_360);
    let x_369 : vec4<f32> = u_xlat2;
    let x_371 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_369.x, x_369.z), 0.0f);
    u_xlat3 = vec3<f32>(x_371.x, x_371.y, x_371.z);
    let x_376 : f32 = x_26.x_UserLut_Params.y;
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
    let x_397 : f32 = x_26.x_UserLut_Params.z;
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
    let x_418 : vec4<f32> = u_xlat1;
    let x_421 : vec4<f32> = u_xlat2;
    let x_423 : vec3<f32> = (-(vec3<f32>(x_418.x, x_418.y, x_418.z)) + vec3<f32>(x_421.x, x_421.y, x_421.z));
    let x_424 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
    let x_427 : vec4<f32> = x_26.x_UserLut_Params;
    let x_429 : vec4<f32> = u_xlat2;
    let x_432 : vec4<f32> = u_xlat1;
    let x_434 : vec3<f32> = ((vec3<f32>(x_427.w, x_427.w, x_427.w) * vec3<f32>(x_429.x, x_429.y, x_429.z)) + vec3<f32>(x_432.x, x_432.y, x_432.z));
    let x_435 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
    let x_437 : vec4<f32> = u_xlat1;
    let x_441 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_442 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
    let x_444 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_444.x, x_444.y, x_444.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_449 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_449 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_453 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_453));
    let x_456 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_456 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_460 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_460);
    let x_465 : vec4<f32> = u_xlat1;
    let x_467 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_465.x, x_465.y, x_465.z, x_465.x));
    u_xlatb1 = vec3<bool>(x_467.x, x_467.y, x_467.z);
    let x_470 : bool = u_xlatb1.x;
    if (x_470) {
      let x_475 : f32 = u_xlat2.x;
      x_471 = x_475;
    } else {
      let x_478 : f32 = u_xlat3.x;
      x_471 = x_478;
    }
    let x_479 : f32 = x_471;
    u_xlat0.x = x_479;
    let x_482 : bool = u_xlatb1.y;
    if (x_482) {
      let x_487 : f32 = u_xlat2.y;
      x_483 = x_487;
    } else {
      let x_490 : f32 = u_xlat3.y;
      x_483 = x_490;
    }
    let x_491 : f32 = x_483;
    u_xlat0.y = x_491;
    let x_494 : bool = u_xlatb1.z;
    if (x_494) {
      let x_499 : f32 = u_xlat2.z;
      x_495 = x_499;
    } else {
      let x_502 : f32 = u_xlat3.z;
      x_495 = x_502;
    }
    let x_503 : f32 = x_495;
    u_xlat0.z = x_503;
  }
  let x_505 : vec4<f32> = u_xlat0;
  let x_508 : vec4<f32> = x_26.x_Lut_Params;
  let x_510 : vec3<f32> = (vec3<f32>(x_505.x, x_505.y, x_505.z) * vec3<f32>(x_508.z, x_508.z, x_508.z));
  let x_511 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_510.z);
  let x_514 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_514);
  let x_517 : vec4<f32> = x_26.x_Lut_Params;
  let x_519 : vec2<f32> = (vec2<f32>(x_517.x, x_517.y) * vec2<f32>(0.5f, 0.5f));
  let x_520 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat0;
  let x_525 : vec4<f32> = x_26.x_Lut_Params;
  let x_528 : vec4<f32> = u_xlat1;
  let x_530 : vec2<f32> = ((vec2<f32>(x_522.x, x_522.y) * vec2<f32>(x_525.x, x_525.y)) + vec2<f32>(x_528.x, x_528.y));
  let x_531 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_531.x, x_530.x, x_530.y, x_531.w);
  let x_533 : f32 = u_xlat15;
  let x_535 : f32 = x_26.x_Lut_Params.y;
  let x_538 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_533 * x_535) + x_538);
  let x_545 : vec4<f32> = u_xlat1;
  let x_547 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_545.x, x_545.z), 0.0f);
  let x_548 : vec3<f32> = vec3<f32>(x_547.x, x_547.y, x_547.z);
  let x_549 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_552 : f32 = x_26.x_Lut_Params.y;
  u_xlat0.x = x_552;
  u_xlat0.y = 0.0f;
  let x_555 : vec4<f32> = u_xlat0;
  let x_557 : vec4<f32> = u_xlat1;
  let x_559 : vec2<f32> = (vec2<f32>(x_555.x, x_555.y) + vec2<f32>(x_557.x, x_557.z));
  let x_560 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
  let x_565 : vec4<f32> = u_xlat0;
  let x_567 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_565.x, x_565.y), 0.0f);
  let x_568 : vec3<f32> = vec3<f32>(x_567.x, x_567.y, x_567.z);
  let x_569 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_572 : f32 = u_xlat0.z;
  let x_574 : f32 = x_26.x_Lut_Params.z;
  let x_576 : f32 = u_xlat15;
  u_xlat0.x = ((x_572 * x_574) + -(x_576));
  let x_581 : vec4<f32> = u_xlat2;
  let x_584 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_581.x, x_581.y, x_581.z)) + vec3<f32>(x_584.x, x_584.y, x_584.z));
  let x_587 : vec4<f32> = u_xlat0;
  let x_589 : vec3<f32> = u_xlat5;
  let x_591 : vec4<f32> = u_xlat2;
  let x_593 : vec3<f32> = ((vec3<f32>(x_587.x, x_587.x, x_587.x) * x_589) + vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_598 : vec4<f32> = u_xlat0;
  let x_600 : vec3<f32> = sqrt(vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_601 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
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
