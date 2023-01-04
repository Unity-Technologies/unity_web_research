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
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb0 : bool;
  var u_xlat5 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_313 : f32;
  var x_325 : f32;
  var x_337 : f32;
  var u_xlat15 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_488 : f32;
  var x_500 : f32;
  var x_512 : f32;
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
  let x_101 : f32 = x_40.x_Vignette_Params2.z;
  u_xlatb0 = (0.0f < x_101);
  let x_103 : bool = u_xlatb0;
  if (x_103) {
    let x_106 : vec2<f32> = vs_TEXCOORD0;
    let x_109 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_112 : vec2<f32> = (x_106 + -(vec2<f32>(x_109.x, x_109.y)));
    let x_113 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_113.w);
    let x_115 : vec4<f32> = u_xlat0;
    let x_119 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_121 : vec2<f32> = (abs(vec2<f32>(x_115.x, x_115.y)) * vec2<f32>(x_119.z, x_119.z));
    let x_122 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_122.x, x_121.x, x_121.y, x_122.w);
    let x_125 : f32 = u_xlat0.y;
    let x_129 : f32 = x_40.x_Vignette_Params1.w;
    u_xlat0.x = (x_125 * x_129);
    let x_132 : vec4<f32> = u_xlat0;
    let x_134 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_132.x, x_132.z), vec2<f32>(x_134.x, x_134.z));
    let x_139 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_139) + 1.0f);
    let x_145 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_145, 0.0f);
    let x_149 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_149);
    let x_153 : f32 = u_xlat0.x;
    let x_155 : f32 = x_40.x_Vignette_Params2.w;
    u_xlat0.x = (x_153 * x_155);
    let x_159 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_159);
    let x_164 : vec4<f32> = x_40.x_Vignette_Params1;
    u_xlat5 = (-(vec3<f32>(x_164.x, x_164.y, x_164.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_169 : vec4<f32> = u_xlat0;
    let x_171 : vec3<f32> = u_xlat5;
    let x_174 : vec4<f32> = x_40.x_Vignette_Params1;
    let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.x, x_169.x) * x_171) + vec3<f32>(x_174.x, x_174.y, x_174.z));
    let x_177 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
    let x_179 : vec4<f32> = u_xlat0;
    let x_181 : vec3<f32> = u_xlat1;
    u_xlat1 = (vec3<f32>(x_179.x, x_179.y, x_179.z) * x_181);
  }
  let x_183 : vec3<f32> = u_xlat1;
  let x_186 : vec4<f32> = x_40.x_Lut_Params;
  let x_188 : vec3<f32> = (x_183 * vec3<f32>(x_186.w, x_186.w, x_186.w));
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_191 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_191.x, x_191.y, x_191.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_197 : vec4<f32> = u_xlat0;
  let x_204 : vec3<f32> = ((vec3<f32>(x_197.x, x_197.y, x_197.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_205 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_207 : vec3<f32> = u_xlat1;
  let x_208 : vec4<f32> = u_xlat2;
  let x_213 : vec3<f32> = ((x_207 * vec3<f32>(x_208.x, x_208.y, x_208.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_216 : vec4<f32> = u_xlat0;
  let x_221 : vec3<f32> = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_222 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec3<f32> = u_xlat1;
  let x_225 : vec4<f32> = u_xlat0;
  let x_230 : vec3<f32> = ((x_224 * vec3<f32>(x_225.x, x_225.y, x_225.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_231 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec4<f32> = u_xlat2;
  let x_235 : vec4<f32> = u_xlat0;
  let x_237 : vec3<f32> = (vec3<f32>(x_233.x, x_233.y, x_233.z) / vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat0;
  let x_244 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_245 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec4<f32> = u_xlat0;
  let x_249 : vec3<f32> = (vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat0;
  let x_256 : vec3<f32> = clamp(vec3<f32>(x_252.x, x_252.y, x_252.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_257 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_262 : f32 = x_40.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_262);
  let x_264 : bool = u_xlatb15;
  if (x_264) {
    let x_267 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_267.x, x_267.y, x_267.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_272 : vec4<f32> = u_xlat0;
    let x_274 : vec3<f32> = log2(vec3<f32>(x_272.x, x_272.y, x_272.z));
    let x_275 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_277 : vec4<f32> = u_xlat2;
    let x_281 : vec3<f32> = (vec3<f32>(x_277.x, x_277.y, x_277.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_282 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
    let x_284 : vec4<f32> = u_xlat2;
    let x_286 : vec3<f32> = exp2(vec3<f32>(x_284.x, x_284.y, x_284.z));
    let x_287 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
    let x_289 : vec4<f32> = u_xlat2;
    let x_296 : vec3<f32> = ((vec3<f32>(x_289.x, x_289.y, x_289.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_297 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
    let x_304 : vec4<f32> = u_xlat0;
    let x_307 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_304.x, x_304.y, x_304.z, x_304.x));
    u_xlatb3 = vec3<bool>(x_307.x, x_307.y, x_307.z);
    let x_310 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_310;
    let x_312 : bool = u_xlatb3.x;
    if (x_312) {
      let x_317 : f32 = u_xlat1.x;
      x_313 = x_317;
    } else {
      let x_320 : f32 = u_xlat2.x;
      x_313 = x_320;
    }
    let x_321 : f32 = x_313;
    hlslcc_movcTemp.x = x_321;
    let x_324 : bool = u_xlatb3.y;
    if (x_324) {
      let x_329 : f32 = u_xlat1.y;
      x_325 = x_329;
    } else {
      let x_332 : f32 = u_xlat2.y;
      x_325 = x_332;
    }
    let x_333 : f32 = x_325;
    hlslcc_movcTemp.y = x_333;
    let x_336 : bool = u_xlatb3.z;
    if (x_336) {
      let x_341 : f32 = u_xlat1.z;
      x_337 = x_341;
    } else {
      let x_344 : f32 = u_xlat2.z;
      x_337 = x_344;
    }
    let x_345 : f32 = x_337;
    hlslcc_movcTemp.z = x_345;
    let x_347 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_347;
    let x_348 : vec3<f32> = u_xlat1;
    let x_351 : vec4<f32> = x_40.x_UserLut_Params;
    let x_353 : vec3<f32> = (vec3<f32>(x_348.z, x_348.x, x_348.y) * vec3<f32>(x_351.z, x_351.z, x_351.z));
    let x_354 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
    let x_358 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_358);
    let x_361 : vec4<f32> = x_40.x_UserLut_Params;
    let x_365 : vec2<f32> = (vec2<f32>(x_361.x, x_361.y) * vec2<f32>(0.5f, 0.5f));
    let x_366 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_365.x, x_366.y, x_366.z, x_365.y);
    let x_368 : vec4<f32> = u_xlat2;
    let x_371 : vec4<f32> = x_40.x_UserLut_Params;
    let x_374 : vec4<f32> = u_xlat2;
    let x_376 : vec2<f32> = ((vec2<f32>(x_368.y, x_368.z) * vec2<f32>(x_371.x, x_371.y)) + vec2<f32>(x_374.x, x_374.w));
    let x_377 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_377.x, x_376.x, x_376.y, x_377.w);
    let x_379 : f32 = u_xlat15;
    let x_381 : f32 = x_40.x_UserLut_Params.y;
    let x_384 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_379 * x_381) + x_384);
    let x_392 : vec4<f32> = u_xlat2;
    let x_394 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_392.x, x_392.z), 0.0f);
    u_xlat3 = vec3<f32>(x_394.x, x_394.y, x_394.z);
    let x_399 : f32 = x_40.x_UserLut_Params.y;
    u_xlat4.x = x_399;
    u_xlat4.y = 0.0f;
    let x_402 : vec4<f32> = u_xlat2;
    let x_404 : vec2<f32> = u_xlat4;
    let x_405 : vec2<f32> = (vec2<f32>(x_402.x, x_402.z) + x_404);
    let x_406 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_405.x, x_405.y, x_406.z, x_406.w);
    let x_411 : vec4<f32> = u_xlat2;
    let x_413 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_411.x, x_411.y), 0.0f);
    let x_414 : vec3<f32> = vec3<f32>(x_413.x, x_413.y, x_413.z);
    let x_415 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
    let x_418 : f32 = u_xlat1.z;
    let x_420 : f32 = x_40.x_UserLut_Params.z;
    let x_422 : f32 = u_xlat15;
    u_xlat15 = ((x_418 * x_420) + -(x_422));
    let x_425 : vec3<f32> = u_xlat3;
    let x_427 : vec4<f32> = u_xlat2;
    let x_429 : vec3<f32> = (-(x_425) + vec3<f32>(x_427.x, x_427.y, x_427.z));
    let x_430 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
    let x_432 : f32 = u_xlat15;
    let x_434 : vec4<f32> = u_xlat2;
    let x_437 : vec3<f32> = u_xlat3;
    let x_438 : vec3<f32> = ((vec3<f32>(x_432, x_432, x_432) * vec3<f32>(x_434.x, x_434.y, x_434.z)) + x_437);
    let x_439 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
    let x_441 : vec3<f32> = u_xlat1;
    let x_443 : vec4<f32> = u_xlat2;
    let x_445 : vec3<f32> = (-(x_441) + vec3<f32>(x_443.x, x_443.y, x_443.z));
    let x_446 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
    let x_449 : vec4<f32> = x_40.x_UserLut_Params;
    let x_451 : vec4<f32> = u_xlat2;
    let x_454 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_449.w, x_449.w, x_449.w) * vec3<f32>(x_451.x, x_451.y, x_451.z)) + x_454);
    let x_456 : vec3<f32> = u_xlat1;
    let x_459 : vec3<f32> = (x_456 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_460 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
    let x_462 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_462 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_466 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_466 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_470 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_470));
    let x_473 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_473 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_477 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_477);
    let x_482 : vec3<f32> = u_xlat1;
    let x_484 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_482.x, x_482.y, x_482.z, x_482.x));
    u_xlatb1 = vec3<bool>(x_484.x, x_484.y, x_484.z);
    let x_487 : bool = u_xlatb1.x;
    if (x_487) {
      let x_492 : f32 = u_xlat2.x;
      x_488 = x_492;
    } else {
      let x_495 : f32 = u_xlat3.x;
      x_488 = x_495;
    }
    let x_496 : f32 = x_488;
    u_xlat0.x = x_496;
    let x_499 : bool = u_xlatb1.y;
    if (x_499) {
      let x_504 : f32 = u_xlat2.y;
      x_500 = x_504;
    } else {
      let x_507 : f32 = u_xlat3.y;
      x_500 = x_507;
    }
    let x_508 : f32 = x_500;
    u_xlat0.y = x_508;
    let x_511 : bool = u_xlatb1.z;
    if (x_511) {
      let x_516 : f32 = u_xlat2.z;
      x_512 = x_516;
    } else {
      let x_519 : f32 = u_xlat3.z;
      x_512 = x_519;
    }
    let x_520 : f32 = x_512;
    u_xlat0.z = x_520;
  }
  let x_522 : vec4<f32> = u_xlat0;
  let x_525 : vec4<f32> = x_40.x_Lut_Params;
  let x_527 : vec3<f32> = (vec3<f32>(x_522.x, x_522.y, x_522.z) * vec3<f32>(x_525.z, x_525.z, x_525.z));
  let x_528 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_527.x, x_527.y, x_528.z, x_527.z);
  let x_531 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_531);
  let x_534 : vec4<f32> = x_40.x_Lut_Params;
  let x_536 : vec2<f32> = (vec2<f32>(x_534.x, x_534.y) * vec2<f32>(0.5f, 0.5f));
  let x_537 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_536.x, x_536.y, x_537.z);
  let x_539 : vec4<f32> = u_xlat0;
  let x_542 : vec4<f32> = x_40.x_Lut_Params;
  let x_545 : vec3<f32> = u_xlat1;
  let x_547 : vec2<f32> = ((vec2<f32>(x_539.x, x_539.y) * vec2<f32>(x_542.x, x_542.y)) + vec2<f32>(x_545.x, x_545.y));
  let x_548 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_548.x, x_547.x, x_547.y);
  let x_550 : f32 = u_xlat15;
  let x_552 : f32 = x_40.x_Lut_Params.y;
  let x_555 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_550 * x_552) + x_555);
  let x_562 : vec3<f32> = u_xlat1;
  let x_564 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_562.x, x_562.z), 0.0f);
  let x_565 : vec3<f32> = vec3<f32>(x_564.x, x_564.y, x_564.z);
  let x_566 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_569 : f32 = x_40.x_Lut_Params.y;
  u_xlat0.x = x_569;
  u_xlat0.y = 0.0f;
  let x_572 : vec4<f32> = u_xlat0;
  let x_574 : vec3<f32> = u_xlat1;
  let x_576 : vec2<f32> = (vec2<f32>(x_572.x, x_572.y) + vec2<f32>(x_574.x, x_574.z));
  let x_577 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
  let x_582 : vec4<f32> = u_xlat0;
  let x_584 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_582.x, x_582.y), 0.0f);
  u_xlat1 = vec3<f32>(x_584.x, x_584.y, x_584.z);
  let x_587 : f32 = u_xlat0.z;
  let x_589 : f32 = x_40.x_Lut_Params.z;
  let x_591 : f32 = u_xlat15;
  u_xlat0.x = ((x_587 * x_589) + -(x_591));
  let x_595 : vec4<f32> = u_xlat2;
  let x_598 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_595.x, x_595.y, x_595.z)) + x_598);
  let x_602 : vec4<f32> = u_xlat0;
  let x_604 : vec3<f32> = u_xlat5;
  let x_606 : vec4<f32> = u_xlat2;
  let x_608 : vec3<f32> = ((vec3<f32>(x_602.x, x_602.x, x_602.x) * x_604) + vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
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

