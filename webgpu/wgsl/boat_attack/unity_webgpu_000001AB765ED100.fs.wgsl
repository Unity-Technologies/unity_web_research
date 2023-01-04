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
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_TilingParams : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

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
  var x_351 : f32;
  var x_363 : f32;
  var x_375 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_525 : f32;
  var x_537 : f32;
  var x_549 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
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
  u_xlat1 = (vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_236 : vec4<f32> = u_xlat0;
  let x_243 : vec3<f32> = ((vec3<f32>(x_236.x, x_236.y, x_236.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_244 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_246 : vec3<f32> = u_xlat1;
  let x_247 : vec4<f32> = u_xlat2;
  let x_252 : vec3<f32> = ((x_246 * vec3<f32>(x_247.x, x_247.y, x_247.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_253 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat0;
  let x_260 : vec3<f32> = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec3<f32> = u_xlat1;
  let x_264 : vec4<f32> = u_xlat0;
  let x_269 : vec3<f32> = ((x_263 * vec3<f32>(x_264.x, x_264.y, x_264.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_270 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_272 : vec4<f32> = u_xlat2;
  let x_274 : vec4<f32> = u_xlat0;
  let x_276 : vec3<f32> = (vec3<f32>(x_272.x, x_272.y, x_272.z) / vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_277 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_279 : vec4<f32> = u_xlat0;
  let x_283 : vec3<f32> = (vec3<f32>(x_279.x, x_279.y, x_279.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_284 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat0;
  let x_288 : vec3<f32> = (vec3<f32>(x_286.x, x_286.y, x_286.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_289 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat0;
  let x_295 : vec3<f32> = clamp(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_296 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_300 : f32 = x_40.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_300);
  let x_302 : bool = u_xlatb15;
  if (x_302) {
    let x_305 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_310 : vec4<f32> = u_xlat0;
    let x_312 : vec3<f32> = log2(vec3<f32>(x_310.x, x_310.y, x_310.z));
    let x_313 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
    let x_315 : vec4<f32> = u_xlat2;
    let x_319 : vec3<f32> = (vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_320 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_322 : vec4<f32> = u_xlat2;
    let x_324 : vec3<f32> = exp2(vec3<f32>(x_322.x, x_322.y, x_322.z));
    let x_325 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
    let x_327 : vec4<f32> = u_xlat2;
    let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_335 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
    let x_342 : vec4<f32> = u_xlat0;
    let x_345 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_342.x, x_342.y, x_342.z, x_342.x));
    u_xlatb3 = vec3<bool>(x_345.x, x_345.y, x_345.z);
    let x_348 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_348;
    let x_350 : bool = u_xlatb3.x;
    if (x_350) {
      let x_355 : f32 = u_xlat1.x;
      x_351 = x_355;
    } else {
      let x_358 : f32 = u_xlat2.x;
      x_351 = x_358;
    }
    let x_359 : f32 = x_351;
    hlslcc_movcTemp.x = x_359;
    let x_362 : bool = u_xlatb3.y;
    if (x_362) {
      let x_367 : f32 = u_xlat1.y;
      x_363 = x_367;
    } else {
      let x_370 : f32 = u_xlat2.y;
      x_363 = x_370;
    }
    let x_371 : f32 = x_363;
    hlslcc_movcTemp.y = x_371;
    let x_374 : bool = u_xlatb3.z;
    if (x_374) {
      let x_379 : f32 = u_xlat1.z;
      x_375 = x_379;
    } else {
      let x_382 : f32 = u_xlat2.z;
      x_375 = x_382;
    }
    let x_383 : f32 = x_375;
    hlslcc_movcTemp.z = x_383;
    let x_385 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_385;
    let x_386 : vec3<f32> = u_xlat1;
    let x_389 : vec4<f32> = x_40.x_UserLut_Params;
    let x_391 : vec3<f32> = (vec3<f32>(x_386.z, x_386.x, x_386.y) * vec3<f32>(x_389.z, x_389.z, x_389.z));
    let x_392 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
    let x_395 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_395);
    let x_398 : vec4<f32> = x_40.x_UserLut_Params;
    let x_402 : vec2<f32> = (vec2<f32>(x_398.x, x_398.y) * vec2<f32>(0.5f, 0.5f));
    let x_403 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_402.x, x_403.y, x_403.z, x_402.y);
    let x_405 : vec4<f32> = u_xlat2;
    let x_408 : vec4<f32> = x_40.x_UserLut_Params;
    let x_411 : vec4<f32> = u_xlat2;
    let x_413 : vec2<f32> = ((vec2<f32>(x_405.y, x_405.z) * vec2<f32>(x_408.x, x_408.y)) + vec2<f32>(x_411.x, x_411.w));
    let x_414 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_414.x, x_413.x, x_413.y, x_414.w);
    let x_416 : f32 = u_xlat15;
    let x_418 : f32 = x_40.x_UserLut_Params.y;
    let x_421 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_416 * x_418) + x_421);
    let x_429 : vec4<f32> = u_xlat2;
    let x_431 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_429.x, x_429.z), 0.0f);
    u_xlat3 = vec3<f32>(x_431.x, x_431.y, x_431.z);
    let x_436 : f32 = x_40.x_UserLut_Params.y;
    u_xlat4.x = x_436;
    u_xlat4.y = 0.0f;
    let x_439 : vec4<f32> = u_xlat2;
    let x_441 : vec2<f32> = u_xlat4;
    let x_442 : vec2<f32> = (vec2<f32>(x_439.x, x_439.z) + x_441);
    let x_443 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
    let x_448 : vec4<f32> = u_xlat2;
    let x_450 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_448.x, x_448.y), 0.0f);
    let x_451 : vec3<f32> = vec3<f32>(x_450.x, x_450.y, x_450.z);
    let x_452 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
    let x_455 : f32 = u_xlat1.z;
    let x_457 : f32 = x_40.x_UserLut_Params.z;
    let x_459 : f32 = u_xlat15;
    u_xlat15 = ((x_455 * x_457) + -(x_459));
    let x_462 : vec3<f32> = u_xlat3;
    let x_464 : vec4<f32> = u_xlat2;
    let x_466 : vec3<f32> = (-(x_462) + vec3<f32>(x_464.x, x_464.y, x_464.z));
    let x_467 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
    let x_469 : f32 = u_xlat15;
    let x_471 : vec4<f32> = u_xlat2;
    let x_474 : vec3<f32> = u_xlat3;
    let x_475 : vec3<f32> = ((vec3<f32>(x_469, x_469, x_469) * vec3<f32>(x_471.x, x_471.y, x_471.z)) + x_474);
    let x_476 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
    let x_478 : vec3<f32> = u_xlat1;
    let x_480 : vec4<f32> = u_xlat2;
    let x_482 : vec3<f32> = (-(x_478) + vec3<f32>(x_480.x, x_480.y, x_480.z));
    let x_483 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
    let x_486 : vec4<f32> = x_40.x_UserLut_Params;
    let x_488 : vec4<f32> = u_xlat2;
    let x_491 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_486.w, x_486.w, x_486.w) * vec3<f32>(x_488.x, x_488.y, x_488.z)) + x_491);
    let x_493 : vec3<f32> = u_xlat1;
    let x_496 : vec3<f32> = (x_493 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_497 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
    let x_499 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_499 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_503 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_503 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_507 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_507));
    let x_510 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_510 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_514 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_514);
    let x_519 : vec3<f32> = u_xlat1;
    let x_521 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_519.x, x_519.y, x_519.z, x_519.x));
    u_xlatb1 = vec3<bool>(x_521.x, x_521.y, x_521.z);
    let x_524 : bool = u_xlatb1.x;
    if (x_524) {
      let x_529 : f32 = u_xlat2.x;
      x_525 = x_529;
    } else {
      let x_532 : f32 = u_xlat3.x;
      x_525 = x_532;
    }
    let x_533 : f32 = x_525;
    u_xlat0.x = x_533;
    let x_536 : bool = u_xlatb1.y;
    if (x_536) {
      let x_541 : f32 = u_xlat2.y;
      x_537 = x_541;
    } else {
      let x_544 : f32 = u_xlat3.y;
      x_537 = x_544;
    }
    let x_545 : f32 = x_537;
    u_xlat0.y = x_545;
    let x_548 : bool = u_xlatb1.z;
    if (x_548) {
      let x_553 : f32 = u_xlat2.z;
      x_549 = x_553;
    } else {
      let x_556 : f32 = u_xlat3.z;
      x_549 = x_556;
    }
    let x_557 : f32 = x_549;
    u_xlat0.z = x_557;
  }
  let x_559 : vec4<f32> = u_xlat0;
  let x_562 : vec4<f32> = x_40.x_Lut_Params;
  let x_564 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) * vec3<f32>(x_562.z, x_562.z, x_562.z));
  let x_565 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_564.z);
  let x_568 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_568);
  let x_571 : vec4<f32> = x_40.x_Lut_Params;
  let x_573 : vec2<f32> = (vec2<f32>(x_571.x, x_571.y) * vec2<f32>(0.5f, 0.5f));
  let x_574 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_573.x, x_573.y, x_574.z);
  let x_576 : vec4<f32> = u_xlat0;
  let x_579 : vec4<f32> = x_40.x_Lut_Params;
  let x_582 : vec3<f32> = u_xlat1;
  let x_584 : vec2<f32> = ((vec2<f32>(x_576.x, x_576.y) * vec2<f32>(x_579.x, x_579.y)) + vec2<f32>(x_582.x, x_582.y));
  let x_585 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_585.x, x_584.x, x_584.y);
  let x_587 : f32 = u_xlat15;
  let x_589 : f32 = x_40.x_Lut_Params.y;
  let x_592 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_587 * x_589) + x_592);
  let x_599 : vec3<f32> = u_xlat1;
  let x_601 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_599.x, x_599.z), 0.0f);
  let x_602 : vec3<f32> = vec3<f32>(x_601.x, x_601.y, x_601.z);
  let x_603 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_606 : f32 = x_40.x_Lut_Params.y;
  u_xlat0.x = x_606;
  u_xlat0.y = 0.0f;
  let x_609 : vec4<f32> = u_xlat0;
  let x_611 : vec3<f32> = u_xlat1;
  let x_613 : vec2<f32> = (vec2<f32>(x_609.x, x_609.y) + vec2<f32>(x_611.x, x_611.z));
  let x_614 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
  let x_619 : vec4<f32> = u_xlat0;
  let x_621 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_619.x, x_619.y), 0.0f);
  u_xlat1 = vec3<f32>(x_621.x, x_621.y, x_621.z);
  let x_624 : f32 = u_xlat0.z;
  let x_626 : f32 = x_40.x_Lut_Params.z;
  let x_628 : f32 = u_xlat15;
  u_xlat0.x = ((x_624 * x_626) + -(x_628));
  let x_633 : vec4<f32> = u_xlat2;
  let x_636 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_633.x, x_633.y, x_633.z)) + x_636);
  let x_638 : vec4<f32> = u_xlat0;
  let x_640 : vec3<f32> = u_xlat5;
  let x_642 : vec4<f32> = u_xlat2;
  let x_644 : vec3<f32> = ((vec3<f32>(x_638.x, x_638.x, x_638.x) * x_640) + vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec2<f32> = vs_TEXCOORD0;
  let x_650 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_654 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_656 : vec2<f32> = ((x_647 * vec2<f32>(x_650.x, x_650.y)) + vec2<f32>(x_654.z, x_654.w));
  let x_657 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_656.x, x_656.y, x_657.z);
  let x_664 : vec3<f32> = u_xlat1;
  let x_667 : f32 = x_40.x_GlobalMipBias.x;
  let x_668 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_664.x, x_664.y), x_667);
  u_xlat15 = x_668.w;
  let x_670 : f32 = u_xlat15;
  u_xlat15 = (x_670 + -0.5f);
  let x_673 : f32 = u_xlat15;
  let x_674 : f32 = u_xlat15;
  u_xlat15 = (x_673 + x_674);
  let x_676 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_676.x, x_676.y, x_676.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_685 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_685);
  let x_690 : f32 = x_40.x_Grain_Params.y;
  let x_692 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_690 * -(x_692)) + 1.0f);
  let x_698 : f32 = u_xlat15;
  let x_700 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_698, x_698, x_698) * vec3<f32>(x_700.x, x_700.y, x_700.z));
  let x_703 : vec3<f32> = u_xlat6;
  let x_706 : vec2<f32> = x_40.x_Grain_Params;
  u_xlat6 = (x_703 * vec3<f32>(x_706.x, x_706.x, x_706.x));
  let x_711 : vec3<f32> = u_xlat6;
  let x_712 : vec3<f32> = u_xlat1;
  let x_715 : vec4<f32> = u_xlat0;
  let x_717 : vec3<f32> = ((x_711 * vec3<f32>(x_712.x, x_712.x, x_712.x)) + vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
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

