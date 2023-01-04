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
  x_Chroma_Params : f32,
  @size(8)
  padding_2 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_TilingParams : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(5) var x_UserLut : texture_2d<f32>;

@group(0) @binding(4) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearRepeat : sampler;

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
  var x_331 : f32;
  var x_343 : f32;
  var x_355 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_505 : f32;
  var x_517 : f32;
  var x_529 : f32;
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
  u_xlat1 = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_142.y, x_142.z, x_142.w)) + x_145);
  let x_147 : vec2<f32> = vs_TEXCOORD0;
  let x_150 : vec4<f32> = x_40.x_LensDirt_Params;
  let x_154 : vec4<f32> = x_40.x_LensDirt_Params;
  let x_156 : vec2<f32> = ((x_147 * vec2<f32>(x_150.x, x_150.y)) + vec2<f32>(x_154.z, x_154.w));
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_157.z, x_157.w);
  let x_163 : vec4<f32> = u_xlat2;
  let x_166 : f32 = x_40.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_163.x, x_163.y), x_166);
  let x_168 : vec3<f32> = vec3<f32>(x_167.x, x_167.y, x_167.z);
  let x_169 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_171 : vec4<f32> = u_xlat2;
  let x_175 : f32 = x_40.x_LensDirt_Intensity;
  let x_177 : vec3<f32> = (vec3<f32>(x_171.x, x_171.y, x_171.z) * vec3<f32>(x_175, x_175, x_175));
  let x_178 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec4<f32> = u_xlat0;
  let x_185 : vec3<f32> = u_xlat1;
  let x_186 : vec3<f32> = ((vec3<f32>(x_180.x, x_180.y, x_180.z) * vec3<f32>(x_182.x, x_182.y, x_182.z)) + x_185);
  let x_187 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_192 : f32 = x_40.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_192);
  let x_194 : bool = u_xlatb15;
  if (x_194) {
    let x_197 : vec2<f32> = vs_TEXCOORD0;
    let x_199 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_202 : vec2<f32> = (x_197 + -(vec2<f32>(x_199.x, x_199.y)));
    let x_203 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_202.x, x_202.y, x_203.z);
    let x_205 : vec3<f32> = u_xlat1;
    let x_209 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_211 : vec2<f32> = (abs(vec2<f32>(x_205.x, x_205.y)) * vec2<f32>(x_209.z, x_209.z));
    let x_212 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_212.x, x_211.x, x_211.y);
    let x_215 : f32 = u_xlat1.y;
    let x_219 : f32 = x_40.x_Vignette_Params1.w;
    u_xlat1.x = (x_215 * x_219);
    let x_223 : vec3<f32> = u_xlat1;
    let x_225 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_223.x, x_223.z), vec2<f32>(x_225.x, x_225.z));
    let x_228 : f32 = u_xlat15;
    u_xlat15 = (-(x_228) + 1.0f);
    let x_232 : f32 = u_xlat15;
    u_xlat15 = max(x_232, 0.0f);
    let x_234 : f32 = u_xlat15;
    u_xlat15 = log2(x_234);
    let x_236 : f32 = u_xlat15;
    let x_238 : f32 = x_40.x_Vignette_Params2.w;
    u_xlat15 = (x_236 * x_238);
    let x_240 : f32 = u_xlat15;
    u_xlat15 = exp2(x_240);
    let x_243 : vec4<f32> = x_40.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_243.x, x_243.y, x_243.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_248 : f32 = u_xlat15;
    let x_250 : vec3<f32> = u_xlat1;
    let x_253 : vec4<f32> = x_40.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_248, x_248, x_248) * x_250) + vec3<f32>(x_253.x, x_253.y, x_253.z));
    let x_256 : vec4<f32> = u_xlat0;
    let x_258 : vec3<f32> = u_xlat1;
    let x_259 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) * x_258);
    let x_260 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  }
  let x_262 : vec4<f32> = u_xlat0;
  let x_266 : vec4<f32> = x_40.x_Lut_Params;
  let x_268 : vec3<f32> = (vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(x_266.w, x_266.w, x_266.w));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat0;
  let x_275 : vec3<f32> = clamp(vec3<f32>(x_271.x, x_271.y, x_271.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_280 : f32 = x_40.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_280);
  let x_282 : bool = u_xlatb15;
  if (x_282) {
    let x_285 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_290 : vec4<f32> = u_xlat0;
    let x_292 : vec3<f32> = log2(vec3<f32>(x_290.x, x_290.y, x_290.z));
    let x_293 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
    let x_295 : vec4<f32> = u_xlat2;
    let x_299 : vec3<f32> = (vec3<f32>(x_295.x, x_295.y, x_295.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_300 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
    let x_302 : vec4<f32> = u_xlat2;
    let x_304 : vec3<f32> = exp2(vec3<f32>(x_302.x, x_302.y, x_302.z));
    let x_305 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
    let x_307 : vec4<f32> = u_xlat2;
    let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_315 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
    let x_322 : vec4<f32> = u_xlat0;
    let x_325 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_322.x, x_322.y, x_322.z, x_322.x));
    u_xlatb3 = vec3<bool>(x_325.x, x_325.y, x_325.z);
    let x_328 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_328;
    let x_330 : bool = u_xlatb3.x;
    if (x_330) {
      let x_335 : f32 = u_xlat1.x;
      x_331 = x_335;
    } else {
      let x_338 : f32 = u_xlat2.x;
      x_331 = x_338;
    }
    let x_339 : f32 = x_331;
    hlslcc_movcTemp.x = x_339;
    let x_342 : bool = u_xlatb3.y;
    if (x_342) {
      let x_347 : f32 = u_xlat1.y;
      x_343 = x_347;
    } else {
      let x_350 : f32 = u_xlat2.y;
      x_343 = x_350;
    }
    let x_351 : f32 = x_343;
    hlslcc_movcTemp.y = x_351;
    let x_354 : bool = u_xlatb3.z;
    if (x_354) {
      let x_359 : f32 = u_xlat1.z;
      x_355 = x_359;
    } else {
      let x_362 : f32 = u_xlat2.z;
      x_355 = x_362;
    }
    let x_363 : f32 = x_355;
    hlslcc_movcTemp.z = x_363;
    let x_365 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_365;
    let x_366 : vec3<f32> = u_xlat1;
    let x_369 : vec4<f32> = x_40.x_UserLut_Params;
    let x_371 : vec3<f32> = (vec3<f32>(x_366.z, x_366.x, x_366.y) * vec3<f32>(x_369.z, x_369.z, x_369.z));
    let x_372 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
    let x_375 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_375);
    let x_378 : vec4<f32> = x_40.x_UserLut_Params;
    let x_382 : vec2<f32> = (vec2<f32>(x_378.x, x_378.y) * vec2<f32>(0.5f, 0.5f));
    let x_383 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_382.x, x_383.y, x_383.z, x_382.y);
    let x_385 : vec4<f32> = u_xlat2;
    let x_388 : vec4<f32> = x_40.x_UserLut_Params;
    let x_391 : vec4<f32> = u_xlat2;
    let x_393 : vec2<f32> = ((vec2<f32>(x_385.y, x_385.z) * vec2<f32>(x_388.x, x_388.y)) + vec2<f32>(x_391.x, x_391.w));
    let x_394 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_394.x, x_393.x, x_393.y, x_394.w);
    let x_396 : f32 = u_xlat15;
    let x_398 : f32 = x_40.x_UserLut_Params.y;
    let x_401 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_396 * x_398) + x_401);
    let x_409 : vec4<f32> = u_xlat2;
    let x_411 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_409.x, x_409.z), 0.0f);
    u_xlat3 = vec3<f32>(x_411.x, x_411.y, x_411.z);
    let x_416 : f32 = x_40.x_UserLut_Params.y;
    u_xlat4.x = x_416;
    u_xlat4.y = 0.0f;
    let x_419 : vec4<f32> = u_xlat2;
    let x_421 : vec2<f32> = u_xlat4;
    let x_422 : vec2<f32> = (vec2<f32>(x_419.x, x_419.z) + x_421);
    let x_423 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_423.w);
    let x_428 : vec4<f32> = u_xlat2;
    let x_430 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_428.x, x_428.y), 0.0f);
    let x_431 : vec3<f32> = vec3<f32>(x_430.x, x_430.y, x_430.z);
    let x_432 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
    let x_435 : f32 = u_xlat1.z;
    let x_437 : f32 = x_40.x_UserLut_Params.z;
    let x_439 : f32 = u_xlat15;
    u_xlat15 = ((x_435 * x_437) + -(x_439));
    let x_442 : vec3<f32> = u_xlat3;
    let x_444 : vec4<f32> = u_xlat2;
    let x_446 : vec3<f32> = (-(x_442) + vec3<f32>(x_444.x, x_444.y, x_444.z));
    let x_447 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
    let x_449 : f32 = u_xlat15;
    let x_451 : vec4<f32> = u_xlat2;
    let x_454 : vec3<f32> = u_xlat3;
    let x_455 : vec3<f32> = ((vec3<f32>(x_449, x_449, x_449) * vec3<f32>(x_451.x, x_451.y, x_451.z)) + x_454);
    let x_456 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
    let x_458 : vec3<f32> = u_xlat1;
    let x_460 : vec4<f32> = u_xlat2;
    let x_462 : vec3<f32> = (-(x_458) + vec3<f32>(x_460.x, x_460.y, x_460.z));
    let x_463 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
    let x_466 : vec4<f32> = x_40.x_UserLut_Params;
    let x_468 : vec4<f32> = u_xlat2;
    let x_471 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_466.w, x_466.w, x_466.w) * vec3<f32>(x_468.x, x_468.y, x_468.z)) + x_471);
    let x_473 : vec3<f32> = u_xlat1;
    let x_476 : vec3<f32> = (x_473 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_477 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
    let x_479 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_479 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_483 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_483 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_487 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_487));
    let x_490 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_490 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_494 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_494);
    let x_499 : vec3<f32> = u_xlat1;
    let x_501 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_499.x, x_499.y, x_499.z, x_499.x));
    u_xlatb1 = vec3<bool>(x_501.x, x_501.y, x_501.z);
    let x_504 : bool = u_xlatb1.x;
    if (x_504) {
      let x_509 : f32 = u_xlat2.x;
      x_505 = x_509;
    } else {
      let x_512 : f32 = u_xlat3.x;
      x_505 = x_512;
    }
    let x_513 : f32 = x_505;
    u_xlat0.x = x_513;
    let x_516 : bool = u_xlatb1.y;
    if (x_516) {
      let x_521 : f32 = u_xlat2.y;
      x_517 = x_521;
    } else {
      let x_524 : f32 = u_xlat3.y;
      x_517 = x_524;
    }
    let x_525 : f32 = x_517;
    u_xlat0.y = x_525;
    let x_528 : bool = u_xlatb1.z;
    if (x_528) {
      let x_533 : f32 = u_xlat2.z;
      x_529 = x_533;
    } else {
      let x_536 : f32 = u_xlat3.z;
      x_529 = x_536;
    }
    let x_537 : f32 = x_529;
    u_xlat0.z = x_537;
  }
  let x_539 : vec4<f32> = u_xlat0;
  let x_542 : vec4<f32> = x_40.x_Lut_Params;
  let x_544 : vec3<f32> = (vec3<f32>(x_539.x, x_539.y, x_539.z) * vec3<f32>(x_542.z, x_542.z, x_542.z));
  let x_545 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_544.x, x_544.y, x_545.z, x_544.z);
  let x_548 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_548);
  let x_551 : vec4<f32> = x_40.x_Lut_Params;
  let x_553 : vec2<f32> = (vec2<f32>(x_551.x, x_551.y) * vec2<f32>(0.5f, 0.5f));
  let x_554 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_553.x, x_553.y, x_554.z);
  let x_556 : vec4<f32> = u_xlat0;
  let x_559 : vec4<f32> = x_40.x_Lut_Params;
  let x_562 : vec3<f32> = u_xlat1;
  let x_564 : vec2<f32> = ((vec2<f32>(x_556.x, x_556.y) * vec2<f32>(x_559.x, x_559.y)) + vec2<f32>(x_562.x, x_562.y));
  let x_565 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_565.x, x_564.x, x_564.y);
  let x_567 : f32 = u_xlat15;
  let x_569 : f32 = x_40.x_Lut_Params.y;
  let x_572 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_567 * x_569) + x_572);
  let x_579 : vec3<f32> = u_xlat1;
  let x_581 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_579.x, x_579.z), 0.0f);
  let x_582 : vec3<f32> = vec3<f32>(x_581.x, x_581.y, x_581.z);
  let x_583 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_586 : f32 = x_40.x_Lut_Params.y;
  u_xlat0.x = x_586;
  u_xlat0.y = 0.0f;
  let x_589 : vec4<f32> = u_xlat0;
  let x_591 : vec3<f32> = u_xlat1;
  let x_593 : vec2<f32> = (vec2<f32>(x_589.x, x_589.y) + vec2<f32>(x_591.x, x_591.z));
  let x_594 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
  let x_599 : vec4<f32> = u_xlat0;
  let x_601 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_599.x, x_599.y), 0.0f);
  u_xlat1 = vec3<f32>(x_601.x, x_601.y, x_601.z);
  let x_604 : f32 = u_xlat0.z;
  let x_606 : f32 = x_40.x_Lut_Params.z;
  let x_608 : f32 = u_xlat15;
  u_xlat0.x = ((x_604 * x_606) + -(x_608));
  let x_613 : vec4<f32> = u_xlat2;
  let x_616 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_613.x, x_613.y, x_613.z)) + x_616);
  let x_618 : vec4<f32> = u_xlat0;
  let x_620 : vec3<f32> = u_xlat5;
  let x_622 : vec4<f32> = u_xlat2;
  let x_624 : vec3<f32> = ((vec3<f32>(x_618.x, x_618.x, x_618.x) * x_620) + vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec2<f32> = vs_TEXCOORD0;
  let x_630 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_634 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_636 : vec2<f32> = ((x_627 * vec2<f32>(x_630.x, x_630.y)) + vec2<f32>(x_634.z, x_634.w));
  let x_637 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_636.x, x_636.y, x_637.z);
  let x_644 : vec3<f32> = u_xlat1;
  let x_647 : f32 = x_40.x_GlobalMipBias.x;
  let x_648 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_644.x, x_644.y), x_647);
  u_xlat15 = x_648.w;
  let x_650 : f32 = u_xlat15;
  u_xlat15 = (x_650 + -0.5f);
  let x_653 : f32 = u_xlat15;
  let x_654 : f32 = u_xlat15;
  u_xlat15 = (x_653 + x_654);
  let x_656 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_656.x, x_656.y, x_656.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_665 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_665);
  let x_670 : f32 = x_40.x_Grain_Params.y;
  let x_672 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_670 * -(x_672)) + 1.0f);
  let x_678 : f32 = u_xlat15;
  let x_680 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_678, x_678, x_678) * vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec3<f32> = u_xlat6;
  let x_686 : vec2<f32> = x_40.x_Grain_Params;
  u_xlat6 = (x_683 * vec3<f32>(x_686.x, x_686.x, x_686.x));
  let x_689 : vec3<f32> = u_xlat6;
  let x_690 : vec3<f32> = u_xlat1;
  let x_693 : vec4<f32> = u_xlat0;
  let x_695 : vec3<f32> = ((x_689 * vec3<f32>(x_690.x, x_690.x, x_690.x)) + vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_700 : vec4<f32> = u_xlat0;
  let x_702 : vec3<f32> = sqrt(vec3<f32>(x_700.x, x_700.y, x_700.z));
  let x_703 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
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

