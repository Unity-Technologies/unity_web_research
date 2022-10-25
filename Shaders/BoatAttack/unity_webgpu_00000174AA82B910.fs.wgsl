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
  x_Dithering_Params : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

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
  var u_xlatb0 : vec3<bool>;
  var x_694 : f32;
  var x_706 : f32;
  var x_718 : f32;
  var x_809 : f32;
  var x_821 : f32;
  var x_833 : f32;
  var x_890 : f32;
  var x_902 : f32;
  var x_914 : f32;
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
  let x_660 : vec4<f32> = u_xlat0;
  let x_662 : vec3<f32> = (vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_663 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : vec4<f32> = u_xlat0;
  let x_668 : vec3<f32> = log2(abs(vec3<f32>(x_665.x, x_665.y, x_665.z)));
  let x_669 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_671 : vec4<f32> = u_xlat2;
  let x_673 : vec3<f32> = (vec3<f32>(x_671.x, x_671.y, x_671.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_674 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat2;
  let x_678 : vec3<f32> = exp2(vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_679 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat2;
  let x_684 : vec3<f32> = ((vec3<f32>(x_681.x, x_681.y, x_681.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_685 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_688 : vec4<f32> = u_xlat0;
  let x_690 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_688.x, x_688.y, x_688.z, x_688.x));
  u_xlatb0 = vec3<bool>(x_690.x, x_690.y, x_690.z);
  let x_693 : bool = u_xlatb0.x;
  if (x_693) {
    let x_698 : f32 = u_xlat1.x;
    x_694 = x_698;
  } else {
    let x_701 : f32 = u_xlat2.x;
    x_694 = x_701;
  }
  let x_702 : f32 = x_694;
  u_xlat0.x = x_702;
  let x_705 : bool = u_xlatb0.y;
  if (x_705) {
    let x_710 : f32 = u_xlat1.y;
    x_706 = x_710;
  } else {
    let x_713 : f32 = u_xlat2.y;
    x_706 = x_713;
  }
  let x_714 : f32 = x_706;
  u_xlat0.y = x_714;
  let x_717 : bool = u_xlatb0.z;
  if (x_717) {
    let x_722 : f32 = u_xlat1.z;
    x_718 = x_722;
  } else {
    let x_725 : f32 = u_xlat2.z;
    x_718 = x_725;
  }
  let x_726 : f32 = x_718;
  u_xlat0.z = x_726;
  let x_728 : vec2<f32> = vs_TEXCOORD0;
  let x_731 : vec4<f32> = x_26.x_Dithering_Params;
  let x_735 : vec4<f32> = x_26.x_Dithering_Params;
  let x_737 : vec2<f32> = ((x_728 * vec2<f32>(x_731.x, x_731.y)) + vec2<f32>(x_735.z, x_735.w));
  let x_738 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_737.x, x_737.y, x_738.z, x_738.w);
  let x_745 : vec4<f32> = u_xlat1;
  let x_748 : f32 = x_26.x_GlobalMipBias.x;
  let x_749 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_745.x, x_745.y), x_748);
  u_xlat15 = x_749.w;
  let x_751 : f32 = u_xlat15;
  u_xlat15 = ((x_751 * 2.0f) + -1.0f);
  let x_756 : f32 = u_xlat15;
  u_xlatb1.x = (x_756 >= 0.0f);
  let x_760 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_760);
  let x_763 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_763)) + 1.0f);
  let x_767 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_767);
  let x_769 : f32 = u_xlat15;
  u_xlat15 = (-(x_769) + 1.0f);
  let x_772 : f32 = u_xlat15;
  let x_774 : f32 = u_xlat1.x;
  u_xlat15 = (x_772 * x_774);
  let x_776 : vec4<f32> = u_xlat0;
  let x_778 : vec3<f32> = (vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_779 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_781 : vec4<f32> = u_xlat0;
  let x_784 : vec3<f32> = log2(abs(vec3<f32>(x_781.x, x_781.y, x_781.z)));
  let x_785 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_787 : vec4<f32> = u_xlat2;
  let x_789 : vec3<f32> = (vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_790 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  let x_792 : vec4<f32> = u_xlat2;
  let x_794 : vec3<f32> = exp2(vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat2;
  let x_800 : vec3<f32> = ((vec3<f32>(x_797.x, x_797.y, x_797.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_801 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat0;
  let x_805 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_803.x, x_803.y, x_803.z, x_803.x));
  u_xlatb0 = vec3<bool>(x_805.x, x_805.y, x_805.z);
  let x_808 : bool = u_xlatb0.x;
  if (x_808) {
    let x_813 : f32 = u_xlat1.x;
    x_809 = x_813;
  } else {
    let x_816 : f32 = u_xlat2.x;
    x_809 = x_816;
  }
  let x_817 : f32 = x_809;
  u_xlat0.x = x_817;
  let x_820 : bool = u_xlatb0.y;
  if (x_820) {
    let x_825 : f32 = u_xlat1.y;
    x_821 = x_825;
  } else {
    let x_828 : f32 = u_xlat2.y;
    x_821 = x_828;
  }
  let x_829 : f32 = x_821;
  u_xlat0.y = x_829;
  let x_832 : bool = u_xlatb0.z;
  if (x_832) {
    let x_837 : f32 = u_xlat1.z;
    x_833 = x_837;
  } else {
    let x_840 : f32 = u_xlat2.z;
    x_833 = x_840;
  }
  let x_841 : f32 = x_833;
  u_xlat0.z = x_841;
  let x_843 : f32 = u_xlat15;
  let x_848 : vec4<f32> = u_xlat0;
  let x_850 : vec3<f32> = ((vec3<f32>(x_843, x_843, x_843) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_848.x, x_848.y, x_848.z));
  let x_851 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec4<f32> = u_xlat0;
  let x_855 : vec3<f32> = (vec3<f32>(x_853.x, x_853.y, x_853.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_856 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec4<f32> = u_xlat0;
  let x_860 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_861 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat2;
  let x_865 : vec3<f32> = (vec3<f32>(x_863.x, x_863.y, x_863.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_866 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec4<f32> = u_xlat2;
  let x_871 : vec3<f32> = log2(abs(vec3<f32>(x_868.x, x_868.y, x_868.z)));
  let x_872 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec4<f32> = u_xlat2;
  let x_876 : vec3<f32> = (vec3<f32>(x_874.x, x_874.y, x_874.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_877 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat2;
  let x_881 : vec3<f32> = exp2(vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec4<f32> = u_xlat0;
  let x_886 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_884.x, x_884.y, x_884.z, x_884.x));
  u_xlatb0 = vec3<bool>(x_886.x, x_886.y, x_886.z);
  let x_889 : bool = u_xlatb0.x;
  if (x_889) {
    let x_894 : f32 = u_xlat1.x;
    x_890 = x_894;
  } else {
    let x_897 : f32 = u_xlat2.x;
    x_890 = x_897;
  }
  let x_898 : f32 = x_890;
  u_xlat0.x = x_898;
  let x_901 : bool = u_xlatb0.y;
  if (x_901) {
    let x_906 : f32 = u_xlat1.y;
    x_902 = x_906;
  } else {
    let x_909 : f32 = u_xlat2.y;
    x_902 = x_909;
  }
  let x_910 : f32 = x_902;
  u_xlat0.y = x_910;
  let x_913 : bool = u_xlatb0.z;
  if (x_913) {
    let x_918 : f32 = u_xlat1.z;
    x_914 = x_918;
  } else {
    let x_921 : f32 = u_xlat2.z;
    x_914 = x_921;
  }
  let x_922 : f32 = x_914;
  u_xlat0.z = x_922;
  let x_926 : vec4<f32> = u_xlat0;
  let x_929 : vec3<f32> = max(vec3<f32>(x_926.x, x_926.y, x_926.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_930 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
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

