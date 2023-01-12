struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  x_ChromaticAberration_Amount : f32,
  @size(8)
  padding : u32,
  x_Lut2D_Params : vec3<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(6) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(7) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_270 : f32;
  var x_283 : f32;
  var x_296 : f32;
  var u_xlat14 : vec2<f32>;
  var x_447 : f32;
  var x_459 : f32;
  var x_471 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_33 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_33.x, x_33.y, x_33.x, x_33.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(vec2<f32>(x_42.z, x_42.w), vec2<f32>(x_44.z, x_44.w));
  let x_48 : vec3<f32> = u_xlat7;
  let x_50 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_48.x, x_48.x, x_48.x, x_48.x) * x_50);
  let x_52 : vec4<f32> = u_xlat1;
  let x_60 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_62 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_64 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_66 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_67 : vec4<f32> = vec4<f32>(x_60, x_62, x_64, x_66);
  u_xlat1 = (x_52 * vec4<f32>(x_67.x, x_67.y, x_67.z, x_67.w));
  let x_83 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.166666672f, 0.0f), 0.0f);
  let x_84 : vec3<f32> = vec3<f32>(x_83.x, x_83.y, x_83.z);
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_93 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.5f, 0.0f), 0.0f);
  let x_94 : vec3<f32> = vec3<f32>(x_93.x, x_93.y, x_93.z);
  let x_95 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_103 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.833333313f, 0.0f), 0.0f);
  let x_104 : vec3<f32> = vec3<f32>(x_103.x, x_103.y, x_103.z);
  let x_105 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_107 : vec2<f32> = vs_TEXCOORD0;
  let x_108 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_107.x, x_107.y, x_108.z);
  let x_110 : vec3<f32> = u_xlat7;
  let x_115 : vec2<f32> = clamp(vec2<f32>(x_110.x, x_110.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_116 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_115.x, x_115.y, x_116.z);
  let x_118 : vec3<f32> = u_xlat7;
  let x_122 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_124 : vec2<f32> = (vec2<f32>(x_118.x, x_118.y) * vec2<f32>(x_122, x_122));
  let x_125 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_124.x, x_124.y, x_125.z);
  let x_133 : vec3<f32> = u_xlat7;
  let x_135 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_133.x, x_133.y), 0.0f);
  u_xlat5 = x_135;
  let x_136 : vec4<f32> = u_xlat1;
  let x_141 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((x_136 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_141.x, x_141.y, x_141.x, x_141.y));
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_144, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_148 : vec4<f32> = u_xlat1;
  let x_150 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat1 = (x_148 * vec4<f32>(x_150, x_150, x_150, x_150));
  let x_157 : vec4<f32> = u_xlat1;
  let x_159 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_157.x, x_157.y), 0.0f);
  u_xlat6 = x_159;
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_163.z, x_163.w), 0.0f);
  u_xlat1 = x_165;
  u_xlat2.w = 1.0f;
  u_xlat3.w = 1.0f;
  let x_169 : vec4<f32> = u_xlat3;
  let x_170 : vec4<f32> = u_xlat6;
  u_xlat6 = (x_169 * x_170);
  let x_172 : vec4<f32> = u_xlat5;
  let x_173 : vec4<f32> = u_xlat2;
  let x_175 : vec4<f32> = u_xlat6;
  u_xlat5 = ((x_172 * x_173) + x_175);
  u_xlat4.w = 1.0f;
  let x_178 : vec4<f32> = u_xlat1;
  let x_179 : vec4<f32> = u_xlat4;
  let x_181 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_178 * x_179) + x_181);
  let x_183 : vec4<f32> = u_xlat2;
  let x_185 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec3<f32>(x_183.x, x_183.y, x_183.z) + vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : vec4<f32> = u_xlat4;
  let x_190 : vec3<f32> = u_xlat7;
  let x_191 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) + x_190);
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  u_xlat2.w = 3.0f;
  let x_196 : vec4<f32> = u_xlat1;
  let x_197 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_196 / x_197);
  let x_199 : vec3<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_204, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_209 : f32 = u_xlat1.w;
  u_xlat1.w = x_209;
  let x_212 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_212, 0.0f, 1.0f);
  let x_215 : vec3<f32> = u_xlat0;
  let x_219 : vec3<f32> = (vec3<f32>(x_215.z, x_215.x, x_215.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec3<f32> = u_xlat0;
  let x_226 : vec3<f32> = max(vec3<f32>(x_222.z, x_222.x, x_222.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_227 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat3;
  let x_231 : vec3<f32> = log2(vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_234 : vec4<f32> = u_xlat3;
  let x_238 : vec3<f32> = (vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_239 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat3;
  let x_243 : vec3<f32> = exp2(vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_246 : vec4<f32> = u_xlat3;
  let x_253 : vec3<f32> = ((vec3<f32>(x_246.x, x_246.y, x_246.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_254 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_262 : vec3<f32> = u_xlat0;
  let x_265 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_262.z, x_262.x, x_262.y, x_262.z));
  u_xlatb0 = vec3<bool>(x_265.x, x_265.y, x_265.z);
  let x_269 : bool = u_xlatb0.x;
  if (x_269) {
    let x_274 : f32 = u_xlat2.x;
    x_270 = x_274;
  } else {
    let x_277 : f32 = u_xlat3.x;
    x_270 = x_277;
  }
  let x_278 : f32 = x_270;
  u_xlat0.x = x_278;
  let x_282 : bool = u_xlatb0.y;
  if (x_282) {
    let x_287 : f32 = u_xlat2.y;
    x_283 = x_287;
  } else {
    let x_290 : f32 = u_xlat3.y;
    x_283 = x_290;
  }
  let x_291 : f32 = x_283;
  u_xlat0.y = x_291;
  let x_295 : bool = u_xlatb0.z;
  if (x_295) {
    let x_300 : f32 = u_xlat2.z;
    x_296 = x_300;
  } else {
    let x_303 : f32 = u_xlat3.z;
    x_296 = x_303;
  }
  let x_304 : f32 = x_296;
  u_xlat0.z = x_304;
  let x_306 : vec3<f32> = u_xlat0;
  let x_310 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat7 = (x_306 * vec3<f32>(x_310.z, x_310.z, x_310.z));
  let x_314 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_314);
  let x_318 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_321 : vec2<f32> = (vec2<f32>(x_318.x, x_318.y) * vec2<f32>(0.5f, 0.5f));
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_321.x, x_321.y, x_322.z, x_322.w);
  let x_324 : vec3<f32> = u_xlat7;
  let x_327 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_330 : vec4<f32> = u_xlat2;
  let x_332 : vec2<f32> = ((vec2<f32>(x_324.y, x_324.z) * vec2<f32>(x_327.x, x_327.y)) + vec2<f32>(x_330.x, x_330.y));
  let x_333 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_333.x, x_332.x, x_332.y, x_333.w);
  let x_336 : f32 = u_xlat7.x;
  let x_338 : f32 = x_55.x_Lut2D_Params.y;
  let x_341 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_336 * x_338) + x_341);
  let x_349 : vec4<f32> = u_xlat2;
  let x_351 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_349.x, x_349.z));
  let x_352 : vec3<f32> = vec3<f32>(x_351.x, x_351.y, x_351.z);
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_356;
  u_xlat4.y = 0.0f;
  let x_361 : vec4<f32> = u_xlat2;
  let x_363 : vec4<f32> = u_xlat4;
  u_xlat14 = (vec2<f32>(x_361.x, x_361.z) + vec2<f32>(x_363.x, x_363.y));
  let x_369 : vec2<f32> = u_xlat14;
  let x_370 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_369);
  let x_371 : vec3<f32> = vec3<f32>(x_370.x, x_370.y, x_370.z);
  let x_372 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : f32 = u_xlat0.x;
  let x_377 : f32 = x_55.x_Lut2D_Params.z;
  let x_380 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_375 * x_377) + -(x_380));
  let x_384 : vec4<f32> = u_xlat3;
  let x_387 : vec4<f32> = u_xlat2;
  u_xlat7 = (-(vec3<f32>(x_384.x, x_384.y, x_384.z)) + vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec3<f32> = u_xlat0;
  let x_392 : vec3<f32> = u_xlat7;
  let x_394 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_390.x, x_390.x, x_390.x) * x_392) + vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec3<f32> = u_xlat0;
  let x_400 : vec3<f32> = (x_397 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec3<f32> = u_xlat0;
  let x_406 : vec3<f32> = (x_403 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_407 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat3;
  let x_413 : vec3<f32> = (vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_414 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat3;
  let x_419 : vec3<f32> = max(abs(vec3<f32>(x_416.x, x_416.y, x_416.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_420 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec4<f32> = u_xlat3;
  let x_424 : vec3<f32> = log2(vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat3;
  let x_431 : vec3<f32> = (vec3<f32>(x_427.x, x_427.y, x_427.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_432 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_434 : vec4<f32> = u_xlat3;
  let x_436 : vec3<f32> = exp2(vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_441 : vec3<f32> = u_xlat0;
  let x_443 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_441.x, x_441.y, x_441.z, x_441.x));
  u_xlatb0 = vec3<bool>(x_443.x, x_443.y, x_443.z);
  let x_446 : bool = u_xlatb0.x;
  if (x_446) {
    let x_451 : f32 = u_xlat2.x;
    x_447 = x_451;
  } else {
    let x_454 : f32 = u_xlat3.x;
    x_447 = x_454;
  }
  let x_455 : f32 = x_447;
  u_xlat1.x = x_455;
  let x_458 : bool = u_xlatb0.y;
  if (x_458) {
    let x_463 : f32 = u_xlat2.y;
    x_459 = x_463;
  } else {
    let x_466 : f32 = u_xlat3.y;
    x_459 = x_466;
  }
  let x_467 : f32 = x_459;
  u_xlat1.y = x_467;
  let x_470 : bool = u_xlatb0.z;
  if (x_470) {
    let x_475 : f32 = u_xlat2.z;
    x_471 = x_475;
  } else {
    let x_478 : f32 = u_xlat3.z;
    x_471 = x_478;
  }
  let x_479 : f32 = x_471;
  u_xlat1.z = x_479;
  let x_483 : f32 = x_55.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_483);
  let x_487 : bool = u_xlatb0.x;
  if (x_487) {
    let x_490 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_490.x, x_490.y, x_490.z);
    let x_492 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_492, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_496 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_496, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_505 : vec4<f32> = u_xlat1;
  SV_Target0 = x_505;
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

