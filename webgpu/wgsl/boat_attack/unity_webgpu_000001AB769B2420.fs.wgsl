struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Chroma_Params : f32,
  @size(12)
  padding_1 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_315 : f32;
  var x_327 : f32;
  var x_339 : f32;
  var u_xlat15 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_490 : f32;
  var x_502 : f32;
  var x_514 : f32;
  var x_688 : f32;
  var x_700 : f32;
  var x_712 : f32;
  var x_767 : f32;
  var x_779 : f32;
  var x_791 : f32;
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
  let x_102 : f32 = x_40.x_Vignette_Params2.z;
  u_xlatb0.x = (0.0f < x_102);
  let x_107 : bool = u_xlatb0.x;
  if (x_107) {
    let x_110 : vec2<f32> = vs_TEXCOORD0;
    let x_113 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_116 : vec2<f32> = (x_110 + -(vec2<f32>(x_113.x, x_113.y)));
    let x_117 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_116.x, x_116.y, x_117.z, x_117.w);
    let x_119 : vec4<f32> = u_xlat0;
    let x_123 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_125 : vec2<f32> = (abs(vec2<f32>(x_119.x, x_119.y)) * vec2<f32>(x_123.z, x_123.z));
    let x_126 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_126.x, x_125.x, x_125.y, x_126.w);
    let x_129 : f32 = u_xlat0.y;
    let x_133 : f32 = x_40.x_Vignette_Params1.w;
    u_xlat0.x = (x_129 * x_133);
    let x_136 : vec4<f32> = u_xlat0;
    let x_138 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_136.x, x_136.z), vec2<f32>(x_138.x, x_138.z));
    let x_143 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_143) + 1.0f);
    let x_149 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_149, 0.0f);
    let x_153 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_153);
    let x_157 : f32 = u_xlat0.x;
    let x_159 : f32 = x_40.x_Vignette_Params2.w;
    u_xlat0.x = (x_157 * x_159);
    let x_163 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_163);
    let x_168 : vec4<f32> = x_40.x_Vignette_Params1;
    u_xlat5 = (-(vec3<f32>(x_168.x, x_168.y, x_168.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_173 : vec4<f32> = u_xlat0;
    let x_175 : vec3<f32> = u_xlat5;
    let x_178 : vec4<f32> = x_40.x_Vignette_Params1;
    let x_180 : vec3<f32> = ((vec3<f32>(x_173.x, x_173.x, x_173.x) * x_175) + vec3<f32>(x_178.x, x_178.y, x_178.z));
    let x_181 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat0;
    let x_185 : vec3<f32> = u_xlat1;
    u_xlat1 = (vec3<f32>(x_183.x, x_183.y, x_183.z) * x_185);
  }
  let x_187 : vec3<f32> = u_xlat1;
  let x_190 : vec4<f32> = x_40.x_Lut_Params;
  let x_192 : vec3<f32> = (x_187 * vec3<f32>(x_190.w, x_190.w, x_190.w));
  let x_193 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_201 : vec4<f32> = u_xlat0;
  let x_208 : vec3<f32> = ((vec3<f32>(x_201.x, x_201.y, x_201.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_209 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_211 : vec3<f32> = u_xlat1;
  let x_212 : vec4<f32> = u_xlat2;
  let x_217 : vec3<f32> = ((x_211 * vec3<f32>(x_212.x, x_212.y, x_212.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_218 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec4<f32> = u_xlat0;
  let x_225 : vec3<f32> = ((vec3<f32>(x_220.x, x_220.y, x_220.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_226 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : vec3<f32> = u_xlat1;
  let x_229 : vec4<f32> = u_xlat0;
  let x_234 : vec3<f32> = ((x_228 * vec3<f32>(x_229.x, x_229.y, x_229.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_235 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_237 : vec4<f32> = u_xlat2;
  let x_239 : vec4<f32> = u_xlat0;
  let x_241 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) / vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : vec4<f32> = u_xlat0;
  let x_248 : vec3<f32> = (vec3<f32>(x_244.x, x_244.y, x_244.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_249 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec4<f32> = u_xlat0;
  let x_253 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_254 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_256 : vec4<f32> = u_xlat0;
  let x_260 : vec3<f32> = clamp(vec3<f32>(x_256.x, x_256.y, x_256.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_266 : f32 = x_40.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_266);
  let x_268 : bool = u_xlatb15;
  if (x_268) {
    let x_271 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_276 : vec4<f32> = u_xlat0;
    let x_278 : vec3<f32> = log2(vec3<f32>(x_276.x, x_276.y, x_276.z));
    let x_279 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
    let x_281 : vec4<f32> = u_xlat2;
    let x_285 : vec3<f32> = (vec3<f32>(x_281.x, x_281.y, x_281.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_286 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_288 : vec4<f32> = u_xlat2;
    let x_290 : vec3<f32> = exp2(vec3<f32>(x_288.x, x_288.y, x_288.z));
    let x_291 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
    let x_293 : vec4<f32> = u_xlat2;
    let x_300 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_301 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
    let x_306 : vec4<f32> = u_xlat0;
    let x_309 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_306.x, x_306.y, x_306.z, x_306.x));
    u_xlatb3 = vec3<bool>(x_309.x, x_309.y, x_309.z);
    let x_312 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_312;
    let x_314 : bool = u_xlatb3.x;
    if (x_314) {
      let x_319 : f32 = u_xlat1.x;
      x_315 = x_319;
    } else {
      let x_322 : f32 = u_xlat2.x;
      x_315 = x_322;
    }
    let x_323 : f32 = x_315;
    hlslcc_movcTemp.x = x_323;
    let x_326 : bool = u_xlatb3.y;
    if (x_326) {
      let x_331 : f32 = u_xlat1.y;
      x_327 = x_331;
    } else {
      let x_334 : f32 = u_xlat2.y;
      x_327 = x_334;
    }
    let x_335 : f32 = x_327;
    hlslcc_movcTemp.y = x_335;
    let x_338 : bool = u_xlatb3.z;
    if (x_338) {
      let x_343 : f32 = u_xlat1.z;
      x_339 = x_343;
    } else {
      let x_346 : f32 = u_xlat2.z;
      x_339 = x_346;
    }
    let x_347 : f32 = x_339;
    hlslcc_movcTemp.z = x_347;
    let x_349 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_349;
    let x_350 : vec3<f32> = u_xlat1;
    let x_353 : vec4<f32> = x_40.x_UserLut_Params;
    let x_355 : vec3<f32> = (vec3<f32>(x_350.z, x_350.x, x_350.y) * vec3<f32>(x_353.z, x_353.z, x_353.z));
    let x_356 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
    let x_360 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_360);
    let x_363 : vec4<f32> = x_40.x_UserLut_Params;
    let x_367 : vec2<f32> = (vec2<f32>(x_363.x, x_363.y) * vec2<f32>(0.5f, 0.5f));
    let x_368 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_367.x, x_368.y, x_368.z, x_367.y);
    let x_370 : vec4<f32> = u_xlat2;
    let x_373 : vec4<f32> = x_40.x_UserLut_Params;
    let x_376 : vec4<f32> = u_xlat2;
    let x_378 : vec2<f32> = ((vec2<f32>(x_370.y, x_370.z) * vec2<f32>(x_373.x, x_373.y)) + vec2<f32>(x_376.x, x_376.w));
    let x_379 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_379.x, x_378.x, x_378.y, x_379.w);
    let x_381 : f32 = u_xlat15;
    let x_383 : f32 = x_40.x_UserLut_Params.y;
    let x_386 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_381 * x_383) + x_386);
    let x_394 : vec4<f32> = u_xlat2;
    let x_396 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_394.x, x_394.z), 0.0f);
    u_xlat3 = vec3<f32>(x_396.x, x_396.y, x_396.z);
    let x_401 : f32 = x_40.x_UserLut_Params.y;
    u_xlat4.x = x_401;
    u_xlat4.y = 0.0f;
    let x_404 : vec4<f32> = u_xlat2;
    let x_406 : vec2<f32> = u_xlat4;
    let x_407 : vec2<f32> = (vec2<f32>(x_404.x, x_404.z) + x_406);
    let x_408 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_407.x, x_407.y, x_408.z, x_408.w);
    let x_413 : vec4<f32> = u_xlat2;
    let x_415 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_413.x, x_413.y), 0.0f);
    let x_416 : vec3<f32> = vec3<f32>(x_415.x, x_415.y, x_415.z);
    let x_417 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
    let x_420 : f32 = u_xlat1.z;
    let x_422 : f32 = x_40.x_UserLut_Params.z;
    let x_424 : f32 = u_xlat15;
    u_xlat15 = ((x_420 * x_422) + -(x_424));
    let x_427 : vec3<f32> = u_xlat3;
    let x_429 : vec4<f32> = u_xlat2;
    let x_431 : vec3<f32> = (-(x_427) + vec3<f32>(x_429.x, x_429.y, x_429.z));
    let x_432 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
    let x_434 : f32 = u_xlat15;
    let x_436 : vec4<f32> = u_xlat2;
    let x_439 : vec3<f32> = u_xlat3;
    let x_440 : vec3<f32> = ((vec3<f32>(x_434, x_434, x_434) * vec3<f32>(x_436.x, x_436.y, x_436.z)) + x_439);
    let x_441 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
    let x_443 : vec3<f32> = u_xlat1;
    let x_445 : vec4<f32> = u_xlat2;
    let x_447 : vec3<f32> = (-(x_443) + vec3<f32>(x_445.x, x_445.y, x_445.z));
    let x_448 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
    let x_451 : vec4<f32> = x_40.x_UserLut_Params;
    let x_453 : vec4<f32> = u_xlat2;
    let x_456 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_451.w, x_451.w, x_451.w) * vec3<f32>(x_453.x, x_453.y, x_453.z)) + x_456);
    let x_458 : vec3<f32> = u_xlat1;
    let x_461 : vec3<f32> = (x_458 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_462 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
    let x_464 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_464 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_468 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_468 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_472 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_472));
    let x_475 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_475 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_479 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_479);
    let x_484 : vec3<f32> = u_xlat1;
    let x_486 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_484.x, x_484.y, x_484.z, x_484.x));
    u_xlatb1 = vec3<bool>(x_486.x, x_486.y, x_486.z);
    let x_489 : bool = u_xlatb1.x;
    if (x_489) {
      let x_494 : f32 = u_xlat2.x;
      x_490 = x_494;
    } else {
      let x_497 : f32 = u_xlat3.x;
      x_490 = x_497;
    }
    let x_498 : f32 = x_490;
    u_xlat0.x = x_498;
    let x_501 : bool = u_xlatb1.y;
    if (x_501) {
      let x_506 : f32 = u_xlat2.y;
      x_502 = x_506;
    } else {
      let x_509 : f32 = u_xlat3.y;
      x_502 = x_509;
    }
    let x_510 : f32 = x_502;
    u_xlat0.y = x_510;
    let x_513 : bool = u_xlatb1.z;
    if (x_513) {
      let x_518 : f32 = u_xlat2.z;
      x_514 = x_518;
    } else {
      let x_521 : f32 = u_xlat3.z;
      x_514 = x_521;
    }
    let x_522 : f32 = x_514;
    u_xlat0.z = x_522;
  }
  let x_524 : vec4<f32> = u_xlat0;
  let x_527 : vec4<f32> = x_40.x_Lut_Params;
  let x_529 : vec3<f32> = (vec3<f32>(x_524.x, x_524.y, x_524.z) * vec3<f32>(x_527.z, x_527.z, x_527.z));
  let x_530 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_529.z);
  let x_533 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_533);
  let x_536 : vec4<f32> = x_40.x_Lut_Params;
  let x_538 : vec2<f32> = (vec2<f32>(x_536.x, x_536.y) * vec2<f32>(0.5f, 0.5f));
  let x_539 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_538.x, x_538.y, x_539.z);
  let x_541 : vec4<f32> = u_xlat0;
  let x_544 : vec4<f32> = x_40.x_Lut_Params;
  let x_547 : vec3<f32> = u_xlat1;
  let x_549 : vec2<f32> = ((vec2<f32>(x_541.x, x_541.y) * vec2<f32>(x_544.x, x_544.y)) + vec2<f32>(x_547.x, x_547.y));
  let x_550 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_550.x, x_549.x, x_549.y);
  let x_552 : f32 = u_xlat15;
  let x_554 : f32 = x_40.x_Lut_Params.y;
  let x_557 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_552 * x_554) + x_557);
  let x_564 : vec3<f32> = u_xlat1;
  let x_566 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_564.x, x_564.z), 0.0f);
  let x_567 : vec3<f32> = vec3<f32>(x_566.x, x_566.y, x_566.z);
  let x_568 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_571 : f32 = x_40.x_Lut_Params.y;
  u_xlat0.x = x_571;
  u_xlat0.y = 0.0f;
  let x_574 : vec4<f32> = u_xlat0;
  let x_576 : vec3<f32> = u_xlat1;
  let x_578 : vec2<f32> = (vec2<f32>(x_574.x, x_574.y) + vec2<f32>(x_576.x, x_576.z));
  let x_579 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_578.x, x_578.y, x_579.z, x_579.w);
  let x_584 : vec4<f32> = u_xlat0;
  let x_586 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_584.x, x_584.y), 0.0f);
  u_xlat1 = vec3<f32>(x_586.x, x_586.y, x_586.z);
  let x_589 : f32 = u_xlat0.z;
  let x_591 : f32 = x_40.x_Lut_Params.z;
  let x_593 : f32 = u_xlat15;
  u_xlat0.x = ((x_589 * x_591) + -(x_593));
  let x_597 : vec4<f32> = u_xlat2;
  let x_600 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_597.x, x_597.y, x_597.z)) + x_600);
  let x_602 : vec4<f32> = u_xlat0;
  let x_604 : vec3<f32> = u_xlat5;
  let x_606 : vec4<f32> = u_xlat2;
  let x_608 : vec3<f32> = ((vec3<f32>(x_602.x, x_602.x, x_602.x) * x_604) + vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec2<f32> = vs_TEXCOORD0;
  let x_614 : vec4<f32> = x_40.x_Dithering_Params;
  let x_618 : vec4<f32> = x_40.x_Dithering_Params;
  let x_620 : vec2<f32> = ((x_611 * vec2<f32>(x_614.x, x_614.y)) + vec2<f32>(x_618.z, x_618.w));
  let x_621 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_620.x, x_620.y, x_621.z);
  let x_628 : vec3<f32> = u_xlat1;
  let x_631 : f32 = x_40.x_GlobalMipBias.x;
  let x_632 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_628.x, x_628.y), x_631);
  u_xlat15 = x_632.w;
  let x_634 : f32 = u_xlat15;
  u_xlat15 = ((x_634 * 2.0f) + -1.0f);
  let x_637 : f32 = u_xlat15;
  u_xlatb1.x = (x_637 >= 0.0f);
  let x_641 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_641);
  let x_644 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_644)) + 1.0f);
  let x_648 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_648);
  let x_650 : f32 = u_xlat15;
  u_xlat15 = (-(x_650) + 1.0f);
  let x_653 : f32 = u_xlat15;
  let x_655 : f32 = u_xlat1.x;
  u_xlat15 = (x_653 * x_655);
  let x_657 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_657.x, x_657.y, x_657.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_660 : vec4<f32> = u_xlat0;
  let x_663 : vec3<f32> = log2(abs(vec3<f32>(x_660.x, x_660.y, x_660.z)));
  let x_664 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat2;
  let x_668 : vec3<f32> = (vec3<f32>(x_666.x, x_666.y, x_666.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_669 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_671 : vec4<f32> = u_xlat2;
  let x_673 : vec3<f32> = exp2(vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat2;
  let x_679 : vec3<f32> = ((vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_680 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat0;
  let x_684 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_682.x, x_682.y, x_682.z, x_682.x));
  u_xlatb0 = vec3<bool>(x_684.x, x_684.y, x_684.z);
  let x_687 : bool = u_xlatb0.x;
  if (x_687) {
    let x_692 : f32 = u_xlat1.x;
    x_688 = x_692;
  } else {
    let x_695 : f32 = u_xlat2.x;
    x_688 = x_695;
  }
  let x_696 : f32 = x_688;
  u_xlat0.x = x_696;
  let x_699 : bool = u_xlatb0.y;
  if (x_699) {
    let x_704 : f32 = u_xlat1.y;
    x_700 = x_704;
  } else {
    let x_707 : f32 = u_xlat2.y;
    x_700 = x_707;
  }
  let x_708 : f32 = x_700;
  u_xlat0.y = x_708;
  let x_711 : bool = u_xlatb0.z;
  if (x_711) {
    let x_716 : f32 = u_xlat1.z;
    x_712 = x_716;
  } else {
    let x_719 : f32 = u_xlat2.z;
    x_712 = x_719;
  }
  let x_720 : f32 = x_712;
  u_xlat0.z = x_720;
  let x_722 : f32 = u_xlat15;
  let x_727 : vec4<f32> = u_xlat0;
  let x_729 : vec3<f32> = ((vec3<f32>(x_722, x_722, x_722) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_732.x, x_732.y, x_732.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_735 : vec4<f32> = u_xlat0;
  let x_737 : vec3<f32> = (vec3<f32>(x_735.x, x_735.y, x_735.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_738 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_740 : vec4<f32> = u_xlat2;
  let x_742 : vec3<f32> = (vec3<f32>(x_740.x, x_740.y, x_740.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_743 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec4<f32> = u_xlat2;
  let x_748 : vec3<f32> = log2(abs(vec3<f32>(x_745.x, x_745.y, x_745.z)));
  let x_749 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : vec4<f32> = u_xlat2;
  let x_753 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_754 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_756 : vec4<f32> = u_xlat2;
  let x_758 : vec3<f32> = exp2(vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : vec4<f32> = u_xlat0;
  let x_763 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_761.x, x_761.y, x_761.z, x_761.x));
  u_xlatb0 = vec3<bool>(x_763.x, x_763.y, x_763.z);
  let x_766 : bool = u_xlatb0.x;
  if (x_766) {
    let x_771 : f32 = u_xlat1.x;
    x_767 = x_771;
  } else {
    let x_774 : f32 = u_xlat2.x;
    x_767 = x_774;
  }
  let x_775 : f32 = x_767;
  u_xlat0.x = x_775;
  let x_778 : bool = u_xlatb0.y;
  if (x_778) {
    let x_783 : f32 = u_xlat1.y;
    x_779 = x_783;
  } else {
    let x_786 : f32 = u_xlat2.y;
    x_779 = x_786;
  }
  let x_787 : f32 = x_779;
  u_xlat0.y = x_787;
  let x_790 : bool = u_xlatb0.z;
  if (x_790) {
    let x_795 : f32 = u_xlat1.z;
    x_791 = x_795;
  } else {
    let x_798 : f32 = u_xlat2.z;
    x_791 = x_798;
  }
  let x_799 : f32 = x_791;
  u_xlat0.z = x_799;
  let x_803 : vec4<f32> = u_xlat0;
  let x_806 : vec3<f32> = max(vec3<f32>(x_803.x, x_803.y, x_803.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_807 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
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

