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

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

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
  var u_xlat3 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlatb15 : bool;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_388 : f32;
  var x_400 : f32;
  var x_412 : f32;
  var u_xlat15 : f32;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_559 : f32;
  var x_571 : f32;
  var x_583 : f32;
  var x_624 : f32;
  var x_636 : f32;
  var x_648 : f32;
  var x_735 : f32;
  var x_747 : f32;
  var x_759 : f32;
  var x_814 : f32;
  var x_826 : f32;
  var x_838 : f32;
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
  let x_191 : vec4<f32> = x_40.x_Lut_Params;
  let x_193 : vec3<f32> = (vec3<f32>(x_187.z, x_187.x, x_187.y) * vec3<f32>(x_191.w, x_191.w, x_191.w));
  let x_194 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat0;
  let x_203 : vec3<f32> = ((vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat0;
  let x_209 : vec3<f32> = max(vec3<f32>(x_206.x, x_206.y, x_206.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_210 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec4<f32> = u_xlat0;
  let x_214 : vec3<f32> = log2(vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_215 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_217 : vec4<f32> = u_xlat0;
  let x_224 : vec3<f32> = ((vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_225 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_227 : vec4<f32> = u_xlat0;
  let x_231 : vec3<f32> = clamp(vec3<f32>(x_227.x, x_227.y, x_227.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_232 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_234 : vec4<f32> = u_xlat0;
  let x_237 : vec4<f32> = x_40.x_Lut_Params;
  u_xlat5 = (vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_237.z, x_237.z, x_237.z));
  let x_241 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_241);
  let x_245 : vec4<f32> = x_40.x_Lut_Params;
  let x_249 : vec2<f32> = (vec2<f32>(x_245.x, x_245.y) * vec2<f32>(0.5f, 0.5f));
  let x_250 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_249.x, x_249.y, x_250.z);
  let x_252 : vec3<f32> = u_xlat5;
  let x_255 : vec4<f32> = x_40.x_Lut_Params;
  let x_258 : vec3<f32> = u_xlat1;
  let x_260 : vec2<f32> = ((vec2<f32>(x_252.y, x_252.z) * vec2<f32>(x_255.x, x_255.y)) + vec2<f32>(x_258.x, x_258.y));
  let x_261 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_261.x, x_260.x, x_260.y);
  let x_264 : f32 = u_xlat5.x;
  let x_266 : f32 = x_40.x_Lut_Params.y;
  let x_269 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_264 * x_266) + x_269);
  let x_277 : vec3<f32> = u_xlat1;
  let x_279 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_277.x, x_277.z), 0.0f);
  let x_280 : vec3<f32> = vec3<f32>(x_279.x, x_279.y, x_279.z);
  let x_281 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_285 : f32 = x_40.x_Lut_Params.y;
  u_xlat3.x = x_285;
  u_xlat3.y = 0.0f;
  let x_290 : vec3<f32> = u_xlat1;
  let x_292 : vec3<f32> = u_xlat3;
  u_xlat10 = (vec2<f32>(x_290.x, x_290.z) + vec2<f32>(x_292.x, x_292.y));
  let x_298 : vec2<f32> = u_xlat10;
  let x_299 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_298, 0.0f);
  u_xlat1 = vec3<f32>(x_299.x, x_299.y, x_299.z);
  let x_302 : f32 = u_xlat0.x;
  let x_304 : f32 = x_40.x_Lut_Params.z;
  let x_307 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_302 * x_304) + -(x_307));
  let x_311 : vec4<f32> = u_xlat2;
  let x_314 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_311.x, x_311.y, x_311.z)) + x_314);
  let x_316 : vec4<f32> = u_xlat0;
  let x_318 : vec3<f32> = u_xlat5;
  let x_320 : vec4<f32> = u_xlat2;
  let x_322 : vec3<f32> = ((vec3<f32>(x_316.x, x_316.x, x_316.x) * x_318) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_328 : f32 = x_40.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_328);
  let x_330 : bool = u_xlatb15;
  if (x_330) {
    let x_333 : vec4<f32> = u_xlat0;
    let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.y, x_333.z);
    let x_335 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
    let x_337 : vec4<f32> = u_xlat0;
    let x_341 : vec3<f32> = clamp(vec3<f32>(x_337.x, x_337.y, x_337.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_342 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
    let x_344 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_349 : vec4<f32> = u_xlat0;
    let x_351 : vec3<f32> = log2(vec3<f32>(x_349.x, x_349.y, x_349.z));
    let x_352 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
    let x_354 : vec4<f32> = u_xlat2;
    let x_358 : vec3<f32> = (vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_359 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
    let x_361 : vec4<f32> = u_xlat2;
    let x_363 : vec3<f32> = exp2(vec3<f32>(x_361.x, x_361.y, x_361.z));
    let x_364 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
    let x_366 : vec4<f32> = u_xlat2;
    let x_373 : vec3<f32> = ((vec3<f32>(x_366.x, x_366.y, x_366.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_374 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
    let x_379 : vec4<f32> = u_xlat0;
    let x_382 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_379.x, x_379.y, x_379.z, x_379.x));
    u_xlatb3 = vec3<bool>(x_382.x, x_382.y, x_382.z);
    let x_385 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_385;
    let x_387 : bool = u_xlatb3.x;
    if (x_387) {
      let x_392 : f32 = u_xlat1.x;
      x_388 = x_392;
    } else {
      let x_395 : f32 = u_xlat2.x;
      x_388 = x_395;
    }
    let x_396 : f32 = x_388;
    hlslcc_movcTemp.x = x_396;
    let x_399 : bool = u_xlatb3.y;
    if (x_399) {
      let x_404 : f32 = u_xlat1.y;
      x_400 = x_404;
    } else {
      let x_407 : f32 = u_xlat2.y;
      x_400 = x_407;
    }
    let x_408 : f32 = x_400;
    hlslcc_movcTemp.y = x_408;
    let x_411 : bool = u_xlatb3.z;
    if (x_411) {
      let x_416 : f32 = u_xlat1.z;
      x_412 = x_416;
    } else {
      let x_419 : f32 = u_xlat2.z;
      x_412 = x_419;
    }
    let x_420 : f32 = x_412;
    hlslcc_movcTemp.z = x_420;
    let x_422 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_422;
    let x_423 : vec3<f32> = u_xlat1;
    let x_426 : vec4<f32> = x_40.x_UserLut_Params;
    let x_428 : vec3<f32> = (vec3<f32>(x_423.z, x_423.x, x_423.y) * vec3<f32>(x_426.z, x_426.z, x_426.z));
    let x_429 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
    let x_433 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_433);
    let x_436 : vec4<f32> = x_40.x_UserLut_Params;
    let x_438 : vec2<f32> = (vec2<f32>(x_436.x, x_436.y) * vec2<f32>(0.5f, 0.5f));
    let x_439 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_438.x, x_439.y, x_439.z, x_438.y);
    let x_441 : vec4<f32> = u_xlat2;
    let x_444 : vec4<f32> = x_40.x_UserLut_Params;
    let x_447 : vec4<f32> = u_xlat2;
    let x_449 : vec2<f32> = ((vec2<f32>(x_441.y, x_441.z) * vec2<f32>(x_444.x, x_444.y)) + vec2<f32>(x_447.x, x_447.w));
    let x_450 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_450.x, x_449.x, x_449.y, x_450.w);
    let x_452 : f32 = u_xlat15;
    let x_454 : f32 = x_40.x_UserLut_Params.y;
    let x_457 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_452 * x_454) + x_457);
    let x_464 : vec4<f32> = u_xlat2;
    let x_466 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_464.x, x_464.z), 0.0f);
    u_xlat3 = vec3<f32>(x_466.x, x_466.y, x_466.z);
    let x_470 : f32 = x_40.x_UserLut_Params.y;
    u_xlat4.x = x_470;
    u_xlat4.y = 0.0f;
    let x_473 : vec4<f32> = u_xlat2;
    let x_475 : vec2<f32> = u_xlat4;
    let x_476 : vec2<f32> = (vec2<f32>(x_473.x, x_473.z) + x_475);
    let x_477 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_476.x, x_476.y, x_477.z, x_477.w);
    let x_482 : vec4<f32> = u_xlat2;
    let x_484 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_482.x, x_482.y), 0.0f);
    let x_485 : vec3<f32> = vec3<f32>(x_484.x, x_484.y, x_484.z);
    let x_486 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
    let x_489 : f32 = u_xlat1.z;
    let x_491 : f32 = x_40.x_UserLut_Params.z;
    let x_493 : f32 = u_xlat15;
    u_xlat15 = ((x_489 * x_491) + -(x_493));
    let x_496 : vec3<f32> = u_xlat3;
    let x_498 : vec4<f32> = u_xlat2;
    let x_500 : vec3<f32> = (-(x_496) + vec3<f32>(x_498.x, x_498.y, x_498.z));
    let x_501 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
    let x_503 : f32 = u_xlat15;
    let x_505 : vec4<f32> = u_xlat2;
    let x_508 : vec3<f32> = u_xlat3;
    let x_509 : vec3<f32> = ((vec3<f32>(x_503, x_503, x_503) * vec3<f32>(x_505.x, x_505.y, x_505.z)) + x_508);
    let x_510 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
    let x_512 : vec3<f32> = u_xlat1;
    let x_514 : vec4<f32> = u_xlat2;
    let x_516 : vec3<f32> = (-(x_512) + vec3<f32>(x_514.x, x_514.y, x_514.z));
    let x_517 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
    let x_520 : vec4<f32> = x_40.x_UserLut_Params;
    let x_522 : vec4<f32> = u_xlat2;
    let x_525 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_520.w, x_520.w, x_520.w) * vec3<f32>(x_522.x, x_522.y, x_522.z)) + x_525);
    let x_527 : vec3<f32> = u_xlat1;
    let x_530 : vec3<f32> = (x_527 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_531 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
    let x_533 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_533 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_537 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_537 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_541 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_541));
    let x_544 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_544 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_548 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_548);
    let x_553 : vec3<f32> = u_xlat1;
    let x_555 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_553.x, x_553.y, x_553.z, x_553.x));
    u_xlatb1 = vec3<bool>(x_555.x, x_555.y, x_555.z);
    let x_558 : bool = u_xlatb1.x;
    if (x_558) {
      let x_563 : f32 = u_xlat2.x;
      x_559 = x_563;
    } else {
      let x_566 : f32 = u_xlat3.x;
      x_559 = x_566;
    }
    let x_567 : f32 = x_559;
    u_xlat0.x = x_567;
    let x_570 : bool = u_xlatb1.y;
    if (x_570) {
      let x_575 : f32 = u_xlat2.y;
      x_571 = x_575;
    } else {
      let x_578 : f32 = u_xlat3.y;
      x_571 = x_578;
    }
    let x_579 : f32 = x_571;
    u_xlat0.y = x_579;
    let x_582 : bool = u_xlatb1.z;
    if (x_582) {
      let x_587 : f32 = u_xlat2.z;
      x_583 = x_587;
    } else {
      let x_590 : f32 = u_xlat3.z;
      x_583 = x_590;
    }
    let x_591 : f32 = x_583;
    u_xlat0.z = x_591;
  }
  let x_593 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_593.x, x_593.y, x_593.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_596 : vec4<f32> = u_xlat0;
  let x_599 : vec3<f32> = log2(abs(vec3<f32>(x_596.x, x_596.y, x_596.z)));
  let x_600 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat2;
  let x_604 : vec3<f32> = (vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_607 : vec4<f32> = u_xlat2;
  let x_609 : vec3<f32> = exp2(vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec4<f32> = u_xlat2;
  let x_615 : vec3<f32> = ((vec3<f32>(x_612.x, x_612.y, x_612.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_616 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat0;
  let x_620 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_618.x, x_618.y, x_618.z, x_618.x));
  u_xlatb0 = vec3<bool>(x_620.x, x_620.y, x_620.z);
  let x_623 : bool = u_xlatb0.x;
  if (x_623) {
    let x_628 : f32 = u_xlat1.x;
    x_624 = x_628;
  } else {
    let x_631 : f32 = u_xlat2.x;
    x_624 = x_631;
  }
  let x_632 : f32 = x_624;
  u_xlat0.x = x_632;
  let x_635 : bool = u_xlatb0.y;
  if (x_635) {
    let x_640 : f32 = u_xlat1.y;
    x_636 = x_640;
  } else {
    let x_643 : f32 = u_xlat2.y;
    x_636 = x_643;
  }
  let x_644 : f32 = x_636;
  u_xlat0.y = x_644;
  let x_647 : bool = u_xlatb0.z;
  if (x_647) {
    let x_652 : f32 = u_xlat1.z;
    x_648 = x_652;
  } else {
    let x_655 : f32 = u_xlat2.z;
    x_648 = x_655;
  }
  let x_656 : f32 = x_648;
  u_xlat0.z = x_656;
  let x_658 : vec2<f32> = vs_TEXCOORD0;
  let x_661 : vec4<f32> = x_40.x_Dithering_Params;
  let x_665 : vec4<f32> = x_40.x_Dithering_Params;
  let x_667 : vec2<f32> = ((x_658 * vec2<f32>(x_661.x, x_661.y)) + vec2<f32>(x_665.z, x_665.w));
  let x_668 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_667.x, x_667.y, x_668.z);
  let x_675 : vec3<f32> = u_xlat1;
  let x_678 : f32 = x_40.x_GlobalMipBias.x;
  let x_679 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_675.x, x_675.y), x_678);
  u_xlat15 = x_679.w;
  let x_681 : f32 = u_xlat15;
  u_xlat15 = ((x_681 * 2.0f) + -1.0f);
  let x_684 : f32 = u_xlat15;
  u_xlatb1.x = (x_684 >= 0.0f);
  let x_688 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_688);
  let x_691 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_691)) + 1.0f);
  let x_695 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_695);
  let x_697 : f32 = u_xlat15;
  u_xlat15 = (-(x_697) + 1.0f);
  let x_700 : f32 = u_xlat15;
  let x_702 : f32 = u_xlat1.x;
  u_xlat15 = (x_700 * x_702);
  let x_704 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_704.x, x_704.y, x_704.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_707 : vec4<f32> = u_xlat0;
  let x_710 : vec3<f32> = log2(abs(vec3<f32>(x_707.x, x_707.y, x_707.z)));
  let x_711 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat2;
  let x_715 : vec3<f32> = (vec3<f32>(x_713.x, x_713.y, x_713.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_716 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat2;
  let x_720 : vec3<f32> = exp2(vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec4<f32> = u_xlat2;
  let x_726 : vec3<f32> = ((vec3<f32>(x_723.x, x_723.y, x_723.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_727 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_729 : vec4<f32> = u_xlat0;
  let x_731 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_729.x, x_729.y, x_729.z, x_729.x));
  u_xlatb0 = vec3<bool>(x_731.x, x_731.y, x_731.z);
  let x_734 : bool = u_xlatb0.x;
  if (x_734) {
    let x_739 : f32 = u_xlat1.x;
    x_735 = x_739;
  } else {
    let x_742 : f32 = u_xlat2.x;
    x_735 = x_742;
  }
  let x_743 : f32 = x_735;
  u_xlat0.x = x_743;
  let x_746 : bool = u_xlatb0.y;
  if (x_746) {
    let x_751 : f32 = u_xlat1.y;
    x_747 = x_751;
  } else {
    let x_754 : f32 = u_xlat2.y;
    x_747 = x_754;
  }
  let x_755 : f32 = x_747;
  u_xlat0.y = x_755;
  let x_758 : bool = u_xlatb0.z;
  if (x_758) {
    let x_763 : f32 = u_xlat1.z;
    x_759 = x_763;
  } else {
    let x_766 : f32 = u_xlat2.z;
    x_759 = x_766;
  }
  let x_767 : f32 = x_759;
  u_xlat0.z = x_767;
  let x_769 : f32 = u_xlat15;
  let x_774 : vec4<f32> = u_xlat0;
  let x_776 : vec3<f32> = ((vec3<f32>(x_769, x_769, x_769) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_774.x, x_774.y, x_774.z));
  let x_777 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_779 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_779.x, x_779.y, x_779.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_782 : vec4<f32> = u_xlat0;
  let x_784 : vec3<f32> = (vec3<f32>(x_782.x, x_782.y, x_782.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_785 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_787 : vec4<f32> = u_xlat2;
  let x_789 : vec3<f32> = (vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_790 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  let x_792 : vec4<f32> = u_xlat2;
  let x_795 : vec3<f32> = log2(abs(vec3<f32>(x_792.x, x_792.y, x_792.z)));
  let x_796 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat2;
  let x_800 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_801 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat2;
  let x_805 : vec3<f32> = exp2(vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat0;
  let x_810 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_808.x, x_808.y, x_808.z, x_808.x));
  u_xlatb0 = vec3<bool>(x_810.x, x_810.y, x_810.z);
  let x_813 : bool = u_xlatb0.x;
  if (x_813) {
    let x_818 : f32 = u_xlat1.x;
    x_814 = x_818;
  } else {
    let x_821 : f32 = u_xlat2.x;
    x_814 = x_821;
  }
  let x_822 : f32 = x_814;
  u_xlat0.x = x_822;
  let x_825 : bool = u_xlatb0.y;
  if (x_825) {
    let x_830 : f32 = u_xlat1.y;
    x_826 = x_830;
  } else {
    let x_833 : f32 = u_xlat2.y;
    x_826 = x_833;
  }
  let x_834 : f32 = x_826;
  u_xlat0.y = x_834;
  let x_837 : bool = u_xlatb0.z;
  if (x_837) {
    let x_842 : f32 = u_xlat1.z;
    x_838 = x_842;
  } else {
    let x_845 : f32 = u_xlat2.z;
    x_838 = x_845;
  }
  let x_846 : f32 = x_838;
  u_xlat0.z = x_846;
  let x_850 : vec4<f32> = u_xlat0;
  let x_852 : vec3<f32> = max(vec3<f32>(x_850.x, x_850.y, x_850.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_853 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
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

