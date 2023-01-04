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
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(5) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearRepeat : sampler;

@group(0) @binding(6) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_464 : f32;
  var x_476 : f32;
  var x_488 : f32;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_634 : f32;
  var x_646 : f32;
  var x_658 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_771 : f32;
  var x_783 : f32;
  var x_795 : f32;
  var x_882 : f32;
  var x_894 : f32;
  var x_906 : f32;
  var x_961 : f32;
  var x_973 : f32;
  var x_985 : f32;
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
  let x_268 : vec3<f32> = (vec3<f32>(x_262.z, x_262.x, x_262.y) * vec3<f32>(x_266.w, x_266.w, x_266.w));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat0;
  let x_278 : vec3<f32> = ((vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_279 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_281 : vec4<f32> = u_xlat0;
  let x_284 : vec3<f32> = max(vec3<f32>(x_281.x, x_281.y, x_281.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : vec4<f32> = u_xlat0;
  let x_289 : vec3<f32> = log2(vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat0;
  let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_300 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat0;
  let x_306 : vec3<f32> = clamp(vec3<f32>(x_302.x, x_302.y, x_302.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_307 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_310 : vec4<f32> = u_xlat0;
  let x_313 : vec4<f32> = x_40.x_Lut_Params;
  u_xlat5 = (vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(x_313.z, x_313.z, x_313.z));
  let x_317 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_317);
  let x_321 : vec4<f32> = x_40.x_Lut_Params;
  let x_325 : vec2<f32> = (vec2<f32>(x_321.x, x_321.y) * vec2<f32>(0.5f, 0.5f));
  let x_326 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_325.x, x_325.y, x_326.z);
  let x_328 : vec3<f32> = u_xlat5;
  let x_331 : vec4<f32> = x_40.x_Lut_Params;
  let x_334 : vec3<f32> = u_xlat1;
  let x_336 : vec2<f32> = ((vec2<f32>(x_328.y, x_328.z) * vec2<f32>(x_331.x, x_331.y)) + vec2<f32>(x_334.x, x_334.y));
  let x_337 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_337.x, x_336.x, x_336.y);
  let x_340 : f32 = u_xlat5.x;
  let x_342 : f32 = x_40.x_Lut_Params.y;
  let x_345 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_340 * x_342) + x_345);
  let x_352 : vec3<f32> = u_xlat1;
  let x_354 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_352.x, x_352.z), 0.0f);
  let x_355 : vec3<f32> = vec3<f32>(x_354.x, x_354.y, x_354.z);
  let x_356 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_360 : f32 = x_40.x_Lut_Params.y;
  u_xlat3.x = x_360;
  u_xlat3.y = 0.0f;
  let x_365 : vec3<f32> = u_xlat1;
  let x_367 : vec3<f32> = u_xlat3;
  u_xlat10 = (vec2<f32>(x_365.x, x_365.z) + vec2<f32>(x_367.x, x_367.y));
  let x_373 : vec2<f32> = u_xlat10;
  let x_374 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_373, 0.0f);
  u_xlat1 = vec3<f32>(x_374.x, x_374.y, x_374.z);
  let x_377 : f32 = u_xlat0.x;
  let x_379 : f32 = x_40.x_Lut_Params.z;
  let x_382 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_377 * x_379) + -(x_382));
  let x_386 : vec4<f32> = u_xlat2;
  let x_389 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_386.x, x_386.y, x_386.z)) + x_389);
  let x_391 : vec4<f32> = u_xlat0;
  let x_393 : vec3<f32> = u_xlat5;
  let x_395 : vec4<f32> = u_xlat2;
  let x_397 : vec3<f32> = ((vec3<f32>(x_391.x, x_391.x, x_391.x) * x_393) + vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_398 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_402 : f32 = x_40.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_402);
  let x_404 : bool = u_xlatb15;
  if (x_404) {
    let x_407 : vec4<f32> = u_xlat0;
    let x_408 : vec3<f32> = vec3<f32>(x_407.x, x_407.y, x_407.z);
    let x_409 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
    let x_411 : vec4<f32> = u_xlat0;
    let x_415 : vec3<f32> = clamp(vec3<f32>(x_411.x, x_411.y, x_411.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_416 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
    let x_418 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_418.x, x_418.y, x_418.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_423 : vec4<f32> = u_xlat0;
    let x_425 : vec3<f32> = log2(vec3<f32>(x_423.x, x_423.y, x_423.z));
    let x_426 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
    let x_428 : vec4<f32> = u_xlat2;
    let x_432 : vec3<f32> = (vec3<f32>(x_428.x, x_428.y, x_428.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_433 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
    let x_435 : vec4<f32> = u_xlat2;
    let x_437 : vec3<f32> = exp2(vec3<f32>(x_435.x, x_435.y, x_435.z));
    let x_438 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
    let x_440 : vec4<f32> = u_xlat2;
    let x_447 : vec3<f32> = ((vec3<f32>(x_440.x, x_440.y, x_440.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_448 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
    let x_455 : vec4<f32> = u_xlat0;
    let x_458 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_455.x, x_455.y, x_455.z, x_455.x));
    u_xlatb3 = vec3<bool>(x_458.x, x_458.y, x_458.z);
    let x_461 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_461;
    let x_463 : bool = u_xlatb3.x;
    if (x_463) {
      let x_468 : f32 = u_xlat1.x;
      x_464 = x_468;
    } else {
      let x_471 : f32 = u_xlat2.x;
      x_464 = x_471;
    }
    let x_472 : f32 = x_464;
    hlslcc_movcTemp.x = x_472;
    let x_475 : bool = u_xlatb3.y;
    if (x_475) {
      let x_480 : f32 = u_xlat1.y;
      x_476 = x_480;
    } else {
      let x_483 : f32 = u_xlat2.y;
      x_476 = x_483;
    }
    let x_484 : f32 = x_476;
    hlslcc_movcTemp.y = x_484;
    let x_487 : bool = u_xlatb3.z;
    if (x_487) {
      let x_492 : f32 = u_xlat1.z;
      x_488 = x_492;
    } else {
      let x_495 : f32 = u_xlat2.z;
      x_488 = x_495;
    }
    let x_496 : f32 = x_488;
    hlslcc_movcTemp.z = x_496;
    let x_498 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_498;
    let x_499 : vec3<f32> = u_xlat1;
    let x_502 : vec4<f32> = x_40.x_UserLut_Params;
    let x_504 : vec3<f32> = (vec3<f32>(x_499.z, x_499.x, x_499.y) * vec3<f32>(x_502.z, x_502.z, x_502.z));
    let x_505 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
    let x_508 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_508);
    let x_511 : vec4<f32> = x_40.x_UserLut_Params;
    let x_513 : vec2<f32> = (vec2<f32>(x_511.x, x_511.y) * vec2<f32>(0.5f, 0.5f));
    let x_514 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_513.x, x_514.y, x_514.z, x_513.y);
    let x_516 : vec4<f32> = u_xlat2;
    let x_519 : vec4<f32> = x_40.x_UserLut_Params;
    let x_522 : vec4<f32> = u_xlat2;
    let x_524 : vec2<f32> = ((vec2<f32>(x_516.y, x_516.z) * vec2<f32>(x_519.x, x_519.y)) + vec2<f32>(x_522.x, x_522.w));
    let x_525 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_525.x, x_524.x, x_524.y, x_525.w);
    let x_527 : f32 = u_xlat15;
    let x_529 : f32 = x_40.x_UserLut_Params.y;
    let x_532 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_527 * x_529) + x_532);
    let x_539 : vec4<f32> = u_xlat2;
    let x_541 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_539.x, x_539.z), 0.0f);
    u_xlat3 = vec3<f32>(x_541.x, x_541.y, x_541.z);
    let x_545 : f32 = x_40.x_UserLut_Params.y;
    u_xlat4.x = x_545;
    u_xlat4.y = 0.0f;
    let x_548 : vec4<f32> = u_xlat2;
    let x_550 : vec2<f32> = u_xlat4;
    let x_551 : vec2<f32> = (vec2<f32>(x_548.x, x_548.z) + x_550);
    let x_552 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
    let x_557 : vec4<f32> = u_xlat2;
    let x_559 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_557.x, x_557.y), 0.0f);
    let x_560 : vec3<f32> = vec3<f32>(x_559.x, x_559.y, x_559.z);
    let x_561 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
    let x_564 : f32 = u_xlat1.z;
    let x_566 : f32 = x_40.x_UserLut_Params.z;
    let x_568 : f32 = u_xlat15;
    u_xlat15 = ((x_564 * x_566) + -(x_568));
    let x_571 : vec3<f32> = u_xlat3;
    let x_573 : vec4<f32> = u_xlat2;
    let x_575 : vec3<f32> = (-(x_571) + vec3<f32>(x_573.x, x_573.y, x_573.z));
    let x_576 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
    let x_578 : f32 = u_xlat15;
    let x_580 : vec4<f32> = u_xlat2;
    let x_583 : vec3<f32> = u_xlat3;
    let x_584 : vec3<f32> = ((vec3<f32>(x_578, x_578, x_578) * vec3<f32>(x_580.x, x_580.y, x_580.z)) + x_583);
    let x_585 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
    let x_587 : vec3<f32> = u_xlat1;
    let x_589 : vec4<f32> = u_xlat2;
    let x_591 : vec3<f32> = (-(x_587) + vec3<f32>(x_589.x, x_589.y, x_589.z));
    let x_592 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
    let x_595 : vec4<f32> = x_40.x_UserLut_Params;
    let x_597 : vec4<f32> = u_xlat2;
    let x_600 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_595.w, x_595.w, x_595.w) * vec3<f32>(x_597.x, x_597.y, x_597.z)) + x_600);
    let x_602 : vec3<f32> = u_xlat1;
    let x_605 : vec3<f32> = (x_602 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_606 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
    let x_608 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_608 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_612 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_612 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_616 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_616));
    let x_619 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_619 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_623 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_623);
    let x_628 : vec3<f32> = u_xlat1;
    let x_630 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_628.x, x_628.y, x_628.z, x_628.x));
    u_xlatb1 = vec3<bool>(x_630.x, x_630.y, x_630.z);
    let x_633 : bool = u_xlatb1.x;
    if (x_633) {
      let x_638 : f32 = u_xlat2.x;
      x_634 = x_638;
    } else {
      let x_641 : f32 = u_xlat3.x;
      x_634 = x_641;
    }
    let x_642 : f32 = x_634;
    u_xlat0.x = x_642;
    let x_645 : bool = u_xlatb1.y;
    if (x_645) {
      let x_650 : f32 = u_xlat2.y;
      x_646 = x_650;
    } else {
      let x_653 : f32 = u_xlat3.y;
      x_646 = x_653;
    }
    let x_654 : f32 = x_646;
    u_xlat0.y = x_654;
    let x_657 : bool = u_xlatb1.z;
    if (x_657) {
      let x_662 : f32 = u_xlat2.z;
      x_658 = x_662;
    } else {
      let x_665 : f32 = u_xlat3.z;
      x_658 = x_665;
    }
    let x_666 : f32 = x_658;
    u_xlat0.z = x_666;
  }
  let x_668 : vec2<f32> = vs_TEXCOORD0;
  let x_671 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_675 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_677 : vec2<f32> = ((x_668 * vec2<f32>(x_671.x, x_671.y)) + vec2<f32>(x_675.z, x_675.w));
  let x_678 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_677.x, x_677.y, x_678.z);
  let x_685 : vec3<f32> = u_xlat1;
  let x_688 : f32 = x_40.x_GlobalMipBias.x;
  let x_689 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_685.x, x_685.y), x_688);
  u_xlat15 = x_689.w;
  let x_691 : f32 = u_xlat15;
  u_xlat15 = (x_691 + -0.5f);
  let x_694 : f32 = u_xlat15;
  let x_695 : f32 = u_xlat15;
  u_xlat15 = (x_694 + x_695);
  let x_697 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_697.x, x_697.y, x_697.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_706 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_706);
  let x_711 : f32 = x_40.x_Grain_Params.y;
  let x_713 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_711 * -(x_713)) + 1.0f);
  let x_719 : f32 = u_xlat15;
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_719, x_719, x_719) * vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : vec3<f32> = u_xlat6;
  let x_727 : vec2<f32> = x_40.x_Grain_Params;
  u_xlat6 = (x_724 * vec3<f32>(x_727.x, x_727.x, x_727.x));
  let x_730 : vec3<f32> = u_xlat6;
  let x_731 : vec3<f32> = u_xlat1;
  let x_734 : vec4<f32> = u_xlat0;
  let x_736 : vec3<f32> = ((x_730 * vec3<f32>(x_731.x, x_731.x, x_731.x)) + vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_739.x, x_739.y, x_739.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_742 : vec4<f32> = u_xlat0;
  let x_745 : vec3<f32> = log2(abs(vec3<f32>(x_742.x, x_742.y, x_742.z)));
  let x_746 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec4<f32> = u_xlat2;
  let x_750 : vec3<f32> = (vec3<f32>(x_748.x, x_748.y, x_748.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_751 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  let x_753 : vec4<f32> = u_xlat2;
  let x_755 : vec3<f32> = exp2(vec3<f32>(x_753.x, x_753.y, x_753.z));
  let x_756 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat2;
  let x_761 : vec3<f32> = ((vec3<f32>(x_758.x, x_758.y, x_758.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_762 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_765 : vec4<f32> = u_xlat0;
  let x_767 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_765.x, x_765.y, x_765.z, x_765.x));
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
  let x_805 : vec2<f32> = vs_TEXCOORD0;
  let x_808 : vec4<f32> = x_40.x_Dithering_Params;
  let x_812 : vec4<f32> = x_40.x_Dithering_Params;
  let x_814 : vec2<f32> = ((x_805 * vec2<f32>(x_808.x, x_808.y)) + vec2<f32>(x_812.z, x_812.w));
  let x_815 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_814.x, x_814.y, x_815.z);
  let x_822 : vec3<f32> = u_xlat1;
  let x_825 : f32 = x_40.x_GlobalMipBias.x;
  let x_826 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_822.x, x_822.y), x_825);
  u_xlat15 = x_826.w;
  let x_828 : f32 = u_xlat15;
  u_xlat15 = ((x_828 * 2.0f) + -1.0f);
  let x_831 : f32 = u_xlat15;
  u_xlatb1.x = (x_831 >= 0.0f);
  let x_835 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_835);
  let x_838 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_838)) + 1.0f);
  let x_842 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_842);
  let x_844 : f32 = u_xlat15;
  u_xlat15 = (-(x_844) + 1.0f);
  let x_847 : f32 = u_xlat15;
  let x_849 : f32 = u_xlat1.x;
  u_xlat15 = (x_847 * x_849);
  let x_851 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_851.x, x_851.y, x_851.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_854 : vec4<f32> = u_xlat0;
  let x_857 : vec3<f32> = log2(abs(vec3<f32>(x_854.x, x_854.y, x_854.z)));
  let x_858 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat2;
  let x_862 : vec3<f32> = (vec3<f32>(x_860.x, x_860.y, x_860.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_863 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat2;
  let x_867 : vec3<f32> = exp2(vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec4<f32> = u_xlat2;
  let x_873 : vec3<f32> = ((vec3<f32>(x_870.x, x_870.y, x_870.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_874 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec4<f32> = u_xlat0;
  let x_878 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_876.x, x_876.y, x_876.z, x_876.x));
  u_xlatb0 = vec3<bool>(x_878.x, x_878.y, x_878.z);
  let x_881 : bool = u_xlatb0.x;
  if (x_881) {
    let x_886 : f32 = u_xlat1.x;
    x_882 = x_886;
  } else {
    let x_889 : f32 = u_xlat2.x;
    x_882 = x_889;
  }
  let x_890 : f32 = x_882;
  u_xlat0.x = x_890;
  let x_893 : bool = u_xlatb0.y;
  if (x_893) {
    let x_898 : f32 = u_xlat1.y;
    x_894 = x_898;
  } else {
    let x_901 : f32 = u_xlat2.y;
    x_894 = x_901;
  }
  let x_902 : f32 = x_894;
  u_xlat0.y = x_902;
  let x_905 : bool = u_xlatb0.z;
  if (x_905) {
    let x_910 : f32 = u_xlat1.z;
    x_906 = x_910;
  } else {
    let x_913 : f32 = u_xlat2.z;
    x_906 = x_913;
  }
  let x_914 : f32 = x_906;
  u_xlat0.z = x_914;
  let x_916 : f32 = u_xlat15;
  let x_921 : vec4<f32> = u_xlat0;
  let x_923 : vec3<f32> = ((vec3<f32>(x_916, x_916, x_916) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_921.x, x_921.y, x_921.z));
  let x_924 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_926 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_926.x, x_926.y, x_926.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_929 : vec4<f32> = u_xlat0;
  let x_931 : vec3<f32> = (vec3<f32>(x_929.x, x_929.y, x_929.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_932 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_934 : vec4<f32> = u_xlat2;
  let x_936 : vec3<f32> = (vec3<f32>(x_934.x, x_934.y, x_934.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_937 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_939 : vec4<f32> = u_xlat2;
  let x_942 : vec3<f32> = log2(abs(vec3<f32>(x_939.x, x_939.y, x_939.z)));
  let x_943 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
  let x_945 : vec4<f32> = u_xlat2;
  let x_947 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_948 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_950 : vec4<f32> = u_xlat2;
  let x_952 : vec3<f32> = exp2(vec3<f32>(x_950.x, x_950.y, x_950.z));
  let x_953 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  let x_955 : vec4<f32> = u_xlat0;
  let x_957 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_955.x, x_955.y, x_955.z, x_955.x));
  u_xlatb0 = vec3<bool>(x_957.x, x_957.y, x_957.z);
  let x_960 : bool = u_xlatb0.x;
  if (x_960) {
    let x_965 : f32 = u_xlat1.x;
    x_961 = x_965;
  } else {
    let x_968 : f32 = u_xlat2.x;
    x_961 = x_968;
  }
  let x_969 : f32 = x_961;
  u_xlat0.x = x_969;
  let x_972 : bool = u_xlatb0.y;
  if (x_972) {
    let x_977 : f32 = u_xlat1.y;
    x_973 = x_977;
  } else {
    let x_980 : f32 = u_xlat2.y;
    x_973 = x_980;
  }
  let x_981 : f32 = x_973;
  u_xlat0.y = x_981;
  let x_984 : bool = u_xlatb0.z;
  if (x_984) {
    let x_989 : f32 = u_xlat1.z;
    x_985 = x_989;
  } else {
    let x_992 : f32 = u_xlat2.z;
    x_985 = x_992;
  }
  let x_993 : f32 = x_985;
  u_xlat0.z = x_993;
  let x_997 : vec4<f32> = u_xlat0;
  let x_999 : vec3<f32> = max(vec3<f32>(x_997.x, x_997.y, x_997.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1000 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
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

