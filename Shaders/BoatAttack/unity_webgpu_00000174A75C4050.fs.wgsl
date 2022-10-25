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
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(5) var x_UserLut : texture_2d<f32>;

@group(0) @binding(4) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearRepeat : sampler;

@group(0) @binding(6) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

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
  var x_354 : f32;
  var x_366 : f32;
  var x_378 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_535 : f32;
  var x_547 : f32;
  var x_559 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_765 : f32;
  var x_777 : f32;
  var x_789 : f32;
  var x_880 : f32;
  var x_892 : f32;
  var x_904 : f32;
  var x_961 : f32;
  var x_973 : f32;
  var x_985 : f32;
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
  let x_232 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_233 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_235 : vec4<f32> = u_xlat0;
  let x_242 : vec3<f32> = ((vec3<f32>(x_235.x, x_235.y, x_235.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_243 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat1;
  let x_247 : vec4<f32> = u_xlat2;
  let x_252 : vec3<f32> = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.x, x_247.y, x_247.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_253 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat0;
  let x_260 : vec3<f32> = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat1;
  let x_265 : vec4<f32> = u_xlat0;
  let x_270 : vec3<f32> = ((vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_265.x, x_265.y, x_265.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat2;
  let x_275 : vec4<f32> = u_xlat0;
  let x_277 : vec3<f32> = (vec3<f32>(x_273.x, x_273.y, x_273.z) / vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec4<f32> = u_xlat0;
  let x_284 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : vec4<f32> = u_xlat0;
  let x_289 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_290 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat0;
  let x_296 : vec3<f32> = clamp(vec3<f32>(x_292.x, x_292.y, x_292.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_297 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_301 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_301);
  let x_303 : bool = u_xlatb15;
  if (x_303) {
    let x_306 : vec4<f32> = u_xlat0;
    let x_310 : vec3<f32> = (vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_311 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
    let x_313 : vec4<f32> = u_xlat0;
    let x_315 : vec3<f32> = log2(vec3<f32>(x_313.x, x_313.y, x_313.z));
    let x_316 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
    let x_318 : vec4<f32> = u_xlat2;
    let x_322 : vec3<f32> = (vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_323 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
    let x_325 : vec4<f32> = u_xlat2;
    let x_327 : vec3<f32> = exp2(vec3<f32>(x_325.x, x_325.y, x_325.z));
    let x_328 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
    let x_330 : vec4<f32> = u_xlat2;
    let x_337 : vec3<f32> = ((vec3<f32>(x_330.x, x_330.y, x_330.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_338 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
    let x_345 : vec4<f32> = u_xlat0;
    let x_348 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_345.x, x_345.y, x_345.z, x_345.x));
    u_xlatb3 = vec3<bool>(x_348.x, x_348.y, x_348.z);
    let x_351 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_351;
    let x_353 : bool = u_xlatb3.x;
    if (x_353) {
      let x_358 : f32 = u_xlat1.x;
      x_354 = x_358;
    } else {
      let x_361 : f32 = u_xlat2.x;
      x_354 = x_361;
    }
    let x_362 : f32 = x_354;
    hlslcc_movcTemp.x = x_362;
    let x_365 : bool = u_xlatb3.y;
    if (x_365) {
      let x_370 : f32 = u_xlat1.y;
      x_366 = x_370;
    } else {
      let x_373 : f32 = u_xlat2.y;
      x_366 = x_373;
    }
    let x_374 : f32 = x_366;
    hlslcc_movcTemp.y = x_374;
    let x_377 : bool = u_xlatb3.z;
    if (x_377) {
      let x_382 : f32 = u_xlat1.z;
      x_378 = x_382;
    } else {
      let x_385 : f32 = u_xlat2.z;
      x_378 = x_385;
    }
    let x_386 : f32 = x_378;
    hlslcc_movcTemp.z = x_386;
    let x_388 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_388;
    let x_389 : vec4<f32> = u_xlat1;
    let x_392 : vec4<f32> = x_26.x_UserLut_Params;
    let x_394 : vec3<f32> = (vec3<f32>(x_389.z, x_389.x, x_389.y) * vec3<f32>(x_392.z, x_392.z, x_392.z));
    let x_395 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
    let x_398 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_398);
    let x_401 : vec4<f32> = x_26.x_UserLut_Params;
    let x_405 : vec2<f32> = (vec2<f32>(x_401.x, x_401.y) * vec2<f32>(0.5f, 0.5f));
    let x_406 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_405.x, x_406.y, x_406.z, x_405.y);
    let x_408 : vec4<f32> = u_xlat2;
    let x_411 : vec4<f32> = x_26.x_UserLut_Params;
    let x_414 : vec4<f32> = u_xlat2;
    let x_416 : vec2<f32> = ((vec2<f32>(x_408.y, x_408.z) * vec2<f32>(x_411.x, x_411.y)) + vec2<f32>(x_414.x, x_414.w));
    let x_417 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_417.x, x_416.x, x_416.y, x_417.w);
    let x_419 : f32 = u_xlat15;
    let x_421 : f32 = x_26.x_UserLut_Params.y;
    let x_424 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_419 * x_421) + x_424);
    let x_433 : vec4<f32> = u_xlat2;
    let x_435 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_433.x, x_433.z), 0.0f);
    u_xlat3 = vec3<f32>(x_435.x, x_435.y, x_435.z);
    let x_440 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_440;
    u_xlat4.y = 0.0f;
    let x_443 : vec4<f32> = u_xlat2;
    let x_445 : vec2<f32> = u_xlat4;
    let x_446 : vec2<f32> = (vec2<f32>(x_443.x, x_443.z) + x_445);
    let x_447 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_447.w);
    let x_452 : vec4<f32> = u_xlat2;
    let x_454 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_452.x, x_452.y), 0.0f);
    let x_455 : vec3<f32> = vec3<f32>(x_454.x, x_454.y, x_454.z);
    let x_456 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
    let x_459 : f32 = u_xlat1.z;
    let x_461 : f32 = x_26.x_UserLut_Params.z;
    let x_463 : f32 = u_xlat15;
    u_xlat15 = ((x_459 * x_461) + -(x_463));
    let x_466 : vec3<f32> = u_xlat3;
    let x_468 : vec4<f32> = u_xlat2;
    let x_470 : vec3<f32> = (-(x_466) + vec3<f32>(x_468.x, x_468.y, x_468.z));
    let x_471 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
    let x_473 : f32 = u_xlat15;
    let x_475 : vec4<f32> = u_xlat2;
    let x_478 : vec3<f32> = u_xlat3;
    let x_479 : vec3<f32> = ((vec3<f32>(x_473, x_473, x_473) * vec3<f32>(x_475.x, x_475.y, x_475.z)) + x_478);
    let x_480 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
    let x_482 : vec4<f32> = u_xlat1;
    let x_485 : vec4<f32> = u_xlat2;
    let x_487 : vec3<f32> = (-(vec3<f32>(x_482.x, x_482.y, x_482.z)) + vec3<f32>(x_485.x, x_485.y, x_485.z));
    let x_488 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
    let x_491 : vec4<f32> = x_26.x_UserLut_Params;
    let x_493 : vec4<f32> = u_xlat2;
    let x_496 : vec4<f32> = u_xlat1;
    let x_498 : vec3<f32> = ((vec3<f32>(x_491.w, x_491.w, x_491.w) * vec3<f32>(x_493.x, x_493.y, x_493.z)) + vec3<f32>(x_496.x, x_496.y, x_496.z));
    let x_499 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
    let x_501 : vec4<f32> = u_xlat1;
    let x_505 : vec3<f32> = (vec3<f32>(x_501.x, x_501.y, x_501.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_506 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
    let x_508 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_508.x, x_508.y, x_508.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_513 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_513 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_517 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_517));
    let x_520 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_520 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_524 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_524);
    let x_529 : vec4<f32> = u_xlat1;
    let x_531 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_529.x, x_529.y, x_529.z, x_529.x));
    u_xlatb1 = vec3<bool>(x_531.x, x_531.y, x_531.z);
    let x_534 : bool = u_xlatb1.x;
    if (x_534) {
      let x_539 : f32 = u_xlat2.x;
      x_535 = x_539;
    } else {
      let x_542 : f32 = u_xlat3.x;
      x_535 = x_542;
    }
    let x_543 : f32 = x_535;
    u_xlat0.x = x_543;
    let x_546 : bool = u_xlatb1.y;
    if (x_546) {
      let x_551 : f32 = u_xlat2.y;
      x_547 = x_551;
    } else {
      let x_554 : f32 = u_xlat3.y;
      x_547 = x_554;
    }
    let x_555 : f32 = x_547;
    u_xlat0.y = x_555;
    let x_558 : bool = u_xlatb1.z;
    if (x_558) {
      let x_563 : f32 = u_xlat2.z;
      x_559 = x_563;
    } else {
      let x_566 : f32 = u_xlat3.z;
      x_559 = x_566;
    }
    let x_567 : f32 = x_559;
    u_xlat0.z = x_567;
  }
  let x_569 : vec4<f32> = u_xlat0;
  let x_572 : vec4<f32> = x_26.x_Lut_Params;
  let x_574 : vec3<f32> = (vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_572.z, x_572.z, x_572.z));
  let x_575 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_574.z);
  let x_578 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_578);
  let x_581 : vec4<f32> = x_26.x_Lut_Params;
  let x_583 : vec2<f32> = (vec2<f32>(x_581.x, x_581.y) * vec2<f32>(0.5f, 0.5f));
  let x_584 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat0;
  let x_589 : vec4<f32> = x_26.x_Lut_Params;
  let x_592 : vec4<f32> = u_xlat1;
  let x_594 : vec2<f32> = ((vec2<f32>(x_586.x, x_586.y) * vec2<f32>(x_589.x, x_589.y)) + vec2<f32>(x_592.x, x_592.y));
  let x_595 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_595.x, x_594.x, x_594.y, x_595.w);
  let x_597 : f32 = u_xlat15;
  let x_599 : f32 = x_26.x_Lut_Params.y;
  let x_602 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_597 * x_599) + x_602);
  let x_609 : vec4<f32> = u_xlat1;
  let x_611 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_609.x, x_609.z), 0.0f);
  let x_612 : vec3<f32> = vec3<f32>(x_611.x, x_611.y, x_611.z);
  let x_613 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_616 : f32 = x_26.x_Lut_Params.y;
  u_xlat0.x = x_616;
  u_xlat0.y = 0.0f;
  let x_619 : vec4<f32> = u_xlat0;
  let x_621 : vec4<f32> = u_xlat1;
  let x_623 : vec2<f32> = (vec2<f32>(x_619.x, x_619.y) + vec2<f32>(x_621.x, x_621.z));
  let x_624 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
  let x_629 : vec4<f32> = u_xlat0;
  let x_631 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_629.x, x_629.y), 0.0f);
  let x_632 : vec3<f32> = vec3<f32>(x_631.x, x_631.y, x_631.z);
  let x_633 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_636 : f32 = u_xlat0.z;
  let x_638 : f32 = x_26.x_Lut_Params.z;
  let x_640 : f32 = u_xlat15;
  u_xlat0.x = ((x_636 * x_638) + -(x_640));
  let x_645 : vec4<f32> = u_xlat2;
  let x_648 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_645.x, x_645.y, x_645.z)) + vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat0;
  let x_653 : vec3<f32> = u_xlat5;
  let x_655 : vec4<f32> = u_xlat2;
  let x_657 : vec3<f32> = ((vec3<f32>(x_651.x, x_651.x, x_651.x) * x_653) + vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_658 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec2<f32> = vs_TEXCOORD0;
  let x_663 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_667 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_669 : vec2<f32> = ((x_660 * vec2<f32>(x_663.x, x_663.y)) + vec2<f32>(x_667.z, x_667.w));
  let x_670 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
  let x_677 : vec4<f32> = u_xlat1;
  let x_680 : f32 = x_26.x_GlobalMipBias.x;
  let x_681 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_677.x, x_677.y), x_680);
  u_xlat15 = x_681.w;
  let x_683 : f32 = u_xlat15;
  u_xlat15 = (x_683 + -0.5f);
  let x_686 : f32 = u_xlat15;
  let x_687 : f32 = u_xlat15;
  u_xlat15 = (x_686 + x_687);
  let x_689 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_689.x, x_689.y, x_689.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_698 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_698);
  let x_703 : f32 = x_26.x_Grain_Params.y;
  let x_705 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_703 * -(x_705)) + 1.0f);
  let x_711 : f32 = u_xlat15;
  let x_713 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_711, x_711, x_711) * vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec3<f32> = u_xlat6;
  let x_719 : vec2<f32> = x_26.x_Grain_Params;
  u_xlat6 = (x_716 * vec3<f32>(x_719.x, x_719.x, x_719.x));
  let x_722 : vec3<f32> = u_xlat6;
  let x_723 : vec4<f32> = u_xlat1;
  let x_726 : vec4<f32> = u_xlat0;
  let x_728 : vec3<f32> = ((x_722 * vec3<f32>(x_723.x, x_723.x, x_723.x)) + vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : vec4<f32> = u_xlat0;
  let x_733 : vec3<f32> = (vec3<f32>(x_731.x, x_731.y, x_731.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_734 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
  let x_736 : vec4<f32> = u_xlat0;
  let x_739 : vec3<f32> = log2(abs(vec3<f32>(x_736.x, x_736.y, x_736.z)));
  let x_740 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_742 : vec4<f32> = u_xlat2;
  let x_744 : vec3<f32> = (vec3<f32>(x_742.x, x_742.y, x_742.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_745 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
  let x_747 : vec4<f32> = u_xlat2;
  let x_749 : vec3<f32> = exp2(vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec4<f32> = u_xlat2;
  let x_755 : vec3<f32> = ((vec3<f32>(x_752.x, x_752.y, x_752.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_756 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_759 : vec4<f32> = u_xlat0;
  let x_761 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_759.x, x_759.y, x_759.z, x_759.x));
  u_xlatb0 = vec3<bool>(x_761.x, x_761.y, x_761.z);
  let x_764 : bool = u_xlatb0.x;
  if (x_764) {
    let x_769 : f32 = u_xlat1.x;
    x_765 = x_769;
  } else {
    let x_772 : f32 = u_xlat2.x;
    x_765 = x_772;
  }
  let x_773 : f32 = x_765;
  u_xlat0.x = x_773;
  let x_776 : bool = u_xlatb0.y;
  if (x_776) {
    let x_781 : f32 = u_xlat1.y;
    x_777 = x_781;
  } else {
    let x_784 : f32 = u_xlat2.y;
    x_777 = x_784;
  }
  let x_785 : f32 = x_777;
  u_xlat0.y = x_785;
  let x_788 : bool = u_xlatb0.z;
  if (x_788) {
    let x_793 : f32 = u_xlat1.z;
    x_789 = x_793;
  } else {
    let x_796 : f32 = u_xlat2.z;
    x_789 = x_796;
  }
  let x_797 : f32 = x_789;
  u_xlat0.z = x_797;
  let x_799 : vec2<f32> = vs_TEXCOORD0;
  let x_802 : vec4<f32> = x_26.x_Dithering_Params;
  let x_806 : vec4<f32> = x_26.x_Dithering_Params;
  let x_808 : vec2<f32> = ((x_799 * vec2<f32>(x_802.x, x_802.y)) + vec2<f32>(x_806.z, x_806.w));
  let x_809 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_808.x, x_808.y, x_809.z, x_809.w);
  let x_816 : vec4<f32> = u_xlat1;
  let x_819 : f32 = x_26.x_GlobalMipBias.x;
  let x_820 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_816.x, x_816.y), x_819);
  u_xlat15 = x_820.w;
  let x_822 : f32 = u_xlat15;
  u_xlat15 = ((x_822 * 2.0f) + -1.0f);
  let x_827 : f32 = u_xlat15;
  u_xlatb1.x = (x_827 >= 0.0f);
  let x_831 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_831);
  let x_834 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_834)) + 1.0f);
  let x_838 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_838);
  let x_840 : f32 = u_xlat15;
  u_xlat15 = (-(x_840) + 1.0f);
  let x_843 : f32 = u_xlat15;
  let x_845 : f32 = u_xlat1.x;
  u_xlat15 = (x_843 * x_845);
  let x_847 : vec4<f32> = u_xlat0;
  let x_849 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_850 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_852 : vec4<f32> = u_xlat0;
  let x_855 : vec3<f32> = log2(abs(vec3<f32>(x_852.x, x_852.y, x_852.z)));
  let x_856 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec4<f32> = u_xlat2;
  let x_860 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_861 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat2;
  let x_865 : vec3<f32> = exp2(vec3<f32>(x_863.x, x_863.y, x_863.z));
  let x_866 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec4<f32> = u_xlat2;
  let x_871 : vec3<f32> = ((vec3<f32>(x_868.x, x_868.y, x_868.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_872 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec4<f32> = u_xlat0;
  let x_876 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_874.x, x_874.y, x_874.z, x_874.x));
  u_xlatb0 = vec3<bool>(x_876.x, x_876.y, x_876.z);
  let x_879 : bool = u_xlatb0.x;
  if (x_879) {
    let x_884 : f32 = u_xlat1.x;
    x_880 = x_884;
  } else {
    let x_887 : f32 = u_xlat2.x;
    x_880 = x_887;
  }
  let x_888 : f32 = x_880;
  u_xlat0.x = x_888;
  let x_891 : bool = u_xlatb0.y;
  if (x_891) {
    let x_896 : f32 = u_xlat1.y;
    x_892 = x_896;
  } else {
    let x_899 : f32 = u_xlat2.y;
    x_892 = x_899;
  }
  let x_900 : f32 = x_892;
  u_xlat0.y = x_900;
  let x_903 : bool = u_xlatb0.z;
  if (x_903) {
    let x_908 : f32 = u_xlat1.z;
    x_904 = x_908;
  } else {
    let x_911 : f32 = u_xlat2.z;
    x_904 = x_911;
  }
  let x_912 : f32 = x_904;
  u_xlat0.z = x_912;
  let x_914 : f32 = u_xlat15;
  let x_919 : vec4<f32> = u_xlat0;
  let x_921 : vec3<f32> = ((vec3<f32>(x_914, x_914, x_914) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_922 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
  let x_924 : vec4<f32> = u_xlat0;
  let x_926 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_927 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
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
  let x_1000 : vec3<f32> = max(vec3<f32>(x_997.x, x_997.y, x_997.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1001 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
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

