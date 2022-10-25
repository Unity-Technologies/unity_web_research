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
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearRepeat : sampler;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

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
  var u_xlat6 : vec3<f32>;
  var x_713 : f32;
  var x_725 : f32;
  var x_737 : f32;
  var x_824 : f32;
  var x_836 : f32;
  var x_848 : f32;
  var x_903 : f32;
  var x_915 : f32;
  var x_927 : f32;
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
  let x_614 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_618 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_620 : vec2<f32> = ((x_611 * vec2<f32>(x_614.x, x_614.y)) + vec2<f32>(x_618.z, x_618.w));
  let x_621 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_620.x, x_620.y, x_621.z);
  let x_628 : vec3<f32> = u_xlat1;
  let x_631 : f32 = x_40.x_GlobalMipBias.x;
  let x_632 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_628.x, x_628.y), x_631);
  u_xlat15 = x_632.w;
  let x_634 : f32 = u_xlat15;
  u_xlat15 = (x_634 + -0.5f);
  let x_637 : f32 = u_xlat15;
  let x_638 : f32 = u_xlat15;
  u_xlat15 = (x_637 + x_638);
  let x_640 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_640.x, x_640.y, x_640.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_649 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_649);
  let x_654 : f32 = x_40.x_Grain_Params.y;
  let x_656 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_654 * -(x_656)) + 1.0f);
  let x_662 : f32 = u_xlat15;
  let x_664 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_662, x_662, x_662) * vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec3<f32> = u_xlat6;
  let x_670 : vec2<f32> = x_40.x_Grain_Params;
  u_xlat6 = (x_667 * vec3<f32>(x_670.x, x_670.x, x_670.x));
  let x_673 : vec3<f32> = u_xlat6;
  let x_674 : vec3<f32> = u_xlat1;
  let x_677 : vec4<f32> = u_xlat0;
  let x_679 : vec3<f32> = ((x_673 * vec3<f32>(x_674.x, x_674.x, x_674.x)) + vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_682.x, x_682.y, x_682.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_685 : vec4<f32> = u_xlat0;
  let x_688 : vec3<f32> = log2(abs(vec3<f32>(x_685.x, x_685.y, x_685.z)));
  let x_689 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec4<f32> = u_xlat2;
  let x_693 : vec3<f32> = (vec3<f32>(x_691.x, x_691.y, x_691.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_694 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec4<f32> = u_xlat2;
  let x_698 : vec3<f32> = exp2(vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat2;
  let x_704 : vec3<f32> = ((vec3<f32>(x_701.x, x_701.y, x_701.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_705 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : vec4<f32> = u_xlat0;
  let x_709 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_707.x, x_707.y, x_707.z, x_707.x));
  u_xlatb0 = vec3<bool>(x_709.x, x_709.y, x_709.z);
  let x_712 : bool = u_xlatb0.x;
  if (x_712) {
    let x_717 : f32 = u_xlat1.x;
    x_713 = x_717;
  } else {
    let x_720 : f32 = u_xlat2.x;
    x_713 = x_720;
  }
  let x_721 : f32 = x_713;
  u_xlat0.x = x_721;
  let x_724 : bool = u_xlatb0.y;
  if (x_724) {
    let x_729 : f32 = u_xlat1.y;
    x_725 = x_729;
  } else {
    let x_732 : f32 = u_xlat2.y;
    x_725 = x_732;
  }
  let x_733 : f32 = x_725;
  u_xlat0.y = x_733;
  let x_736 : bool = u_xlatb0.z;
  if (x_736) {
    let x_741 : f32 = u_xlat1.z;
    x_737 = x_741;
  } else {
    let x_744 : f32 = u_xlat2.z;
    x_737 = x_744;
  }
  let x_745 : f32 = x_737;
  u_xlat0.z = x_745;
  let x_747 : vec2<f32> = vs_TEXCOORD0;
  let x_750 : vec4<f32> = x_40.x_Dithering_Params;
  let x_754 : vec4<f32> = x_40.x_Dithering_Params;
  let x_756 : vec2<f32> = ((x_747 * vec2<f32>(x_750.x, x_750.y)) + vec2<f32>(x_754.z, x_754.w));
  let x_757 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_756.x, x_756.y, x_757.z);
  let x_764 : vec3<f32> = u_xlat1;
  let x_767 : f32 = x_40.x_GlobalMipBias.x;
  let x_768 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_764.x, x_764.y), x_767);
  u_xlat15 = x_768.w;
  let x_770 : f32 = u_xlat15;
  u_xlat15 = ((x_770 * 2.0f) + -1.0f);
  let x_773 : f32 = u_xlat15;
  u_xlatb1.x = (x_773 >= 0.0f);
  let x_777 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_777);
  let x_780 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_780)) + 1.0f);
  let x_784 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_784);
  let x_786 : f32 = u_xlat15;
  u_xlat15 = (-(x_786) + 1.0f);
  let x_789 : f32 = u_xlat15;
  let x_791 : f32 = u_xlat1.x;
  u_xlat15 = (x_789 * x_791);
  let x_793 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_793.x, x_793.y, x_793.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_796 : vec4<f32> = u_xlat0;
  let x_799 : vec3<f32> = log2(abs(vec3<f32>(x_796.x, x_796.y, x_796.z)));
  let x_800 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_802 : vec4<f32> = u_xlat2;
  let x_804 : vec3<f32> = (vec3<f32>(x_802.x, x_802.y, x_802.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_805 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat2;
  let x_809 : vec3<f32> = exp2(vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : vec4<f32> = u_xlat2;
  let x_815 : vec3<f32> = ((vec3<f32>(x_812.x, x_812.y, x_812.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_816 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat0;
  let x_820 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_818.x, x_818.y, x_818.z, x_818.x));
  u_xlatb0 = vec3<bool>(x_820.x, x_820.y, x_820.z);
  let x_823 : bool = u_xlatb0.x;
  if (x_823) {
    let x_828 : f32 = u_xlat1.x;
    x_824 = x_828;
  } else {
    let x_831 : f32 = u_xlat2.x;
    x_824 = x_831;
  }
  let x_832 : f32 = x_824;
  u_xlat0.x = x_832;
  let x_835 : bool = u_xlatb0.y;
  if (x_835) {
    let x_840 : f32 = u_xlat1.y;
    x_836 = x_840;
  } else {
    let x_843 : f32 = u_xlat2.y;
    x_836 = x_843;
  }
  let x_844 : f32 = x_836;
  u_xlat0.y = x_844;
  let x_847 : bool = u_xlatb0.z;
  if (x_847) {
    let x_852 : f32 = u_xlat1.z;
    x_848 = x_852;
  } else {
    let x_855 : f32 = u_xlat2.z;
    x_848 = x_855;
  }
  let x_856 : f32 = x_848;
  u_xlat0.z = x_856;
  let x_858 : f32 = u_xlat15;
  let x_863 : vec4<f32> = u_xlat0;
  let x_865 : vec3<f32> = ((vec3<f32>(x_858, x_858, x_858) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_863.x, x_863.y, x_863.z));
  let x_866 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_868.x, x_868.y, x_868.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_871 : vec4<f32> = u_xlat0;
  let x_873 : vec3<f32> = (vec3<f32>(x_871.x, x_871.y, x_871.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_874 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec4<f32> = u_xlat2;
  let x_878 : vec3<f32> = (vec3<f32>(x_876.x, x_876.y, x_876.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_879 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_881 : vec4<f32> = u_xlat2;
  let x_884 : vec3<f32> = log2(abs(vec3<f32>(x_881.x, x_881.y, x_881.z)));
  let x_885 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : vec4<f32> = u_xlat2;
  let x_889 : vec3<f32> = (vec3<f32>(x_887.x, x_887.y, x_887.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_890 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec4<f32> = u_xlat2;
  let x_894 : vec3<f32> = exp2(vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_895 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec4<f32> = u_xlat0;
  let x_899 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_897.x, x_897.y, x_897.z, x_897.x));
  u_xlatb0 = vec3<bool>(x_899.x, x_899.y, x_899.z);
  let x_902 : bool = u_xlatb0.x;
  if (x_902) {
    let x_907 : f32 = u_xlat1.x;
    x_903 = x_907;
  } else {
    let x_910 : f32 = u_xlat2.x;
    x_903 = x_910;
  }
  let x_911 : f32 = x_903;
  u_xlat0.x = x_911;
  let x_914 : bool = u_xlatb0.y;
  if (x_914) {
    let x_919 : f32 = u_xlat1.y;
    x_915 = x_919;
  } else {
    let x_922 : f32 = u_xlat2.y;
    x_915 = x_922;
  }
  let x_923 : f32 = x_915;
  u_xlat0.y = x_923;
  let x_926 : bool = u_xlatb0.z;
  if (x_926) {
    let x_931 : f32 = u_xlat1.z;
    x_927 = x_931;
  } else {
    let x_934 : f32 = u_xlat2.z;
    x_927 = x_934;
  }
  let x_935 : f32 = x_927;
  u_xlat0.z = x_935;
  let x_939 : vec4<f32> = u_xlat0;
  let x_942 : vec3<f32> = max(vec3<f32>(x_939.x, x_939.y, x_939.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_943 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
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
