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
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Bloom_Texture_TexelSize : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearRepeat : sampler;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat13 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlatb18 : bool;
  var u_xlat18 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : vec2<f32>;
  var u_xlatb1 : bool;
  var u_xlatb6 : bool;
  var x_575 : f32;
  var x_584 : f32;
  var u_xlatb12 : vec2<bool>;
  var u_xlat19 : f32;
  var u_xlatb9 : bool;
  var x_723 : f32;
  var u_xlatb19 : bool;
  var x_774 : f32;
  var x_801 : f32;
  var x_825 : f32;
  var x_836 : f32;
  var u_xlatb0 : vec3<bool>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1225 : f32;
  var x_1237 : f32;
  var x_1249 : f32;
  var x_1412 : f32;
  var x_1424 : f32;
  var x_1436 : f32;
  var x_1629 : f32;
  var x_1641 : f32;
  var x_1653 : f32;
  var x_1738 : f32;
  var x_1750 : f32;
  var x_1762 : f32;
  var x_1814 : f32;
  var x_1826 : f32;
  var x_1838 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_34);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_39 : vec2<f32> = vs_TEXCOORD0;
  let x_43 : vec4<f32> = x_27.x_Bloom_Texture_TexelSize;
  let x_48 : vec2<f32> = ((x_39 * vec2<f32>(x_43.z, x_43.w)) + vec2<f32>(0.5f, 0.5f));
  let x_49 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_48.x, x_48.y, x_49.z, x_49.w);
  let x_53 : vec4<f32> = u_xlat1;
  u_xlat13 = floor(vec2<f32>(x_53.x, x_53.y));
  let x_56 : vec4<f32> = u_xlat1;
  let x_58 : vec2<f32> = fract(vec2<f32>(x_56.x, x_56.y));
  let x_59 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_58.x, x_58.y, x_59.z, x_59.w);
  let x_62 : vec4<f32> = u_xlat1;
  u_xlat2 = ((-(vec4<f32>(x_62.x, x_62.y, x_62.x, x_62.y)) * vec4<f32>(0.5f, 0.5f, 0.166666672f, 0.166666672f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_70 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_70.x, x_70.y, x_70.x, x_70.y) * x_72) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_78 : vec4<f32> = u_xlat1;
  let x_83 : vec2<f32> = ((vec2<f32>(x_78.x, x_78.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_84 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_87 : vec4<f32> = u_xlat1;
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat15 = (vec2<f32>(x_87.x, x_87.y) * vec2<f32>(x_89.x, x_89.y));
  let x_92 : vec2<f32> = u_xlat15;
  let x_93 : vec4<f32> = u_xlat3;
  let x_98 : vec2<f32> = ((x_92 * vec2<f32>(x_93.x, x_93.y)) + vec2<f32>(0.666666687f, 0.666666687f));
  let x_99 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_98.x, x_98.y, x_99.z, x_99.w);
  let x_101 : vec4<f32> = u_xlat1;
  let x_103 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_101.x, x_101.y, x_101.x, x_101.y) * x_103) + vec4<f32>(0.166666672f, 0.166666672f, 0.166666672f, 0.166666672f));
  let x_107 : vec4<f32> = u_xlat3;
  let x_112 : vec2<f32> = (-(vec2<f32>(x_107.x, x_107.y)) + vec2<f32>(1.0f, 1.0f));
  let x_113 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_113.w);
  let x_115 : vec4<f32> = u_xlat2;
  let x_118 : vec4<f32> = u_xlat1;
  let x_120 : vec2<f32> = (-(vec2<f32>(x_115.x, x_115.y)) + vec2<f32>(x_118.x, x_118.y));
  let x_121 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_120.x, x_120.y, x_121.z, x_121.w);
  let x_123 : vec4<f32> = u_xlat2;
  let x_126 : vec4<f32> = u_xlat1;
  let x_128 : vec2<f32> = (-(vec2<f32>(x_123.z, x_123.w)) + vec2<f32>(x_126.x, x_126.y));
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_128.x, x_128.y, x_129.z, x_129.w);
  let x_132 : vec4<f32> = u_xlat3;
  let x_134 : vec4<f32> = u_xlat2;
  u_xlat14 = (vec2<f32>(x_132.x, x_132.y) + vec2<f32>(x_134.z, x_134.w));
  let x_137 : vec4<f32> = u_xlat1;
  let x_139 : vec4<f32> = u_xlat2;
  let x_141 : vec2<f32> = (vec2<f32>(x_137.x, x_137.y) + vec2<f32>(x_139.x, x_139.y));
  let x_142 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_141.x, x_141.y, x_142.z, x_142.w);
  let x_144 : vec2<f32> = u_xlat14;
  u_xlat15 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_144.x, x_144.y));
  let x_149 : vec4<f32> = u_xlat3;
  let x_151 : vec2<f32> = u_xlat15;
  let x_153 : vec2<f32> = ((vec2<f32>(x_149.x, x_149.y) * x_151) + vec2<f32>(-1.0f, -1.0f));
  let x_154 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_154.x, x_154.y, x_153.x, x_153.y);
  let x_157 : vec4<f32> = u_xlat2;
  let x_158 : vec2<f32> = vec2<f32>(x_157.x, x_157.y);
  let x_162 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_158.x, x_158.y));
  let x_163 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_162.x, x_162.y, x_163.z, x_163.w);
  let x_165 : vec4<f32> = u_xlat1;
  let x_167 : vec4<f32> = u_xlat4;
  let x_170 : vec2<f32> = ((vec2<f32>(x_165.x, x_165.y) * vec2<f32>(x_167.x, x_167.y)) + vec2<f32>(1.0f, 1.0f));
  let x_171 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_170.x, x_170.y, x_171.z, x_171.w);
  let x_173 : vec2<f32> = u_xlat13;
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_173.x, x_173.y, x_173.x, x_173.y) + vec4<f32>(x_175.z, x_175.w, x_175.x, x_175.w));
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_178 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_181 : vec4<f32> = u_xlat4;
  let x_183 : vec4<f32> = x_27.x_Bloom_Texture_TexelSize;
  u_xlat4 = (x_181 * vec4<f32>(x_183.x, x_183.y, x_183.x, x_183.y));
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat4 = min(x_186, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_194 : vec4<f32> = u_xlat4;
  let x_197 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_194.x, x_194.y), 0.0f);
  u_xlat5 = x_197;
  let x_201 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_201.z, x_201.w), 0.0f);
  u_xlat4 = x_203;
  let x_204 : vec4<f32> = u_xlat2;
  let x_206 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_204.x, x_204.x, x_204.x, x_204.x) * x_206);
  let x_208 : vec2<f32> = u_xlat14;
  let x_210 : vec4<f32> = u_xlat5;
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat4 = ((vec4<f32>(x_208.x, x_208.x, x_208.x, x_208.x) * x_210) + x_212);
  let x_214 : vec2<f32> = u_xlat13;
  let x_216 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_214.x, x_214.y, x_214.x, x_214.y) + vec4<f32>(x_216.z, x_216.y, x_216.x, x_216.y));
  let x_219 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_219 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_221 : vec4<f32> = u_xlat1;
  let x_223 : vec4<f32> = x_27.x_Bloom_Texture_TexelSize;
  u_xlat1 = (x_221 * vec4<f32>(x_223.x, x_223.y, x_223.x, x_223.y));
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat1 = min(x_226, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_231.x, x_231.y), 0.0f);
  u_xlat3 = x_233;
  let x_237 : vec4<f32> = u_xlat1;
  let x_239 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_237.z, x_237.w), 0.0f);
  u_xlat1 = x_239;
  let x_240 : vec4<f32> = u_xlat1;
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_240 * vec4<f32>(x_241.x, x_241.x, x_241.x, x_241.x));
  let x_244 : vec2<f32> = u_xlat14;
  let x_246 : vec4<f32> = u_xlat3;
  let x_248 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_244.x, x_244.x, x_244.x, x_244.x) * x_246) + x_248);
  let x_250 : vec4<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_250 * vec4<f32>(x_251.y, x_251.y, x_251.y, x_251.y));
  let x_254 : vec2<f32> = u_xlat14;
  let x_256 : vec4<f32> = u_xlat4;
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_254.y, x_254.y, x_254.y, x_254.y) * x_256) + x_258);
  let x_265 : f32 = x_27.x_Bloom_RGBM;
  u_xlatb18 = (0.0f < x_265);
  let x_267 : bool = u_xlatb18;
  if (x_267) {
    let x_270 : vec4<f32> = u_xlat1;
    let x_272 : vec4<f32> = u_xlat1;
    let x_274 : vec3<f32> = (vec3<f32>(x_270.w, x_270.w, x_270.w) * vec3<f32>(x_272.x, x_272.y, x_272.z));
    let x_275 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_277 : vec4<f32> = u_xlat2;
    let x_281 : vec3<f32> = (vec3<f32>(x_277.x, x_277.y, x_277.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_282 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  }
  let x_284 : vec4<f32> = u_xlat1;
  let x_288 : vec4<f32> = x_27.x_Bloom_Params;
  let x_290 : vec3<f32> = (vec3<f32>(x_284.x, x_284.y, x_284.z) * vec3<f32>(x_288.x, x_288.x, x_288.x));
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat1;
  let x_296 : vec4<f32> = x_27.x_Bloom_Params;
  let x_299 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_296.y, x_296.z, x_296.w)) + x_299);
  let x_304 : f32 = x_27.x_Vignette_Params2.z;
  u_xlatb18 = (0.0f < x_304);
  let x_306 : bool = u_xlatb18;
  if (x_306) {
    let x_309 : vec2<f32> = vs_TEXCOORD0;
    let x_311 : vec4<f32> = x_27.x_Vignette_Params2;
    let x_314 : vec2<f32> = (x_309 + -(vec2<f32>(x_311.x, x_311.y)));
    let x_315 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_314.x, x_314.y, x_315.z, x_315.w);
    let x_317 : vec4<f32> = u_xlat1;
    let x_321 : vec4<f32> = x_27.x_Vignette_Params2;
    let x_323 : vec2<f32> = (abs(vec2<f32>(x_317.x, x_317.y)) * vec2<f32>(x_321.z, x_321.z));
    let x_324 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_324.x, x_323.x, x_323.y, x_324.w);
    let x_329 : f32 = u_xlat1.y;
    let x_333 : f32 = x_27.x_Vignette_Params1.w;
    u_xlat1.x = (x_329 * x_333);
    let x_337 : vec4<f32> = u_xlat1;
    let x_339 : vec4<f32> = u_xlat1;
    u_xlat18 = dot(vec2<f32>(x_337.x, x_337.z), vec2<f32>(x_339.x, x_339.z));
    let x_342 : f32 = u_xlat18;
    u_xlat18 = (-(x_342) + 1.0f);
    let x_345 : f32 = u_xlat18;
    u_xlat18 = max(x_345, 0.0f);
    let x_347 : f32 = u_xlat18;
    u_xlat18 = log2(x_347);
    let x_349 : f32 = u_xlat18;
    let x_351 : f32 = x_27.x_Vignette_Params2.w;
    u_xlat18 = (x_349 * x_351);
    let x_353 : f32 = u_xlat18;
    u_xlat18 = exp2(x_353);
    let x_356 : vec4<f32> = x_27.x_Vignette_Params1;
    let x_360 : vec3<f32> = (-(vec3<f32>(x_356.x, x_356.y, x_356.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_361 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
    let x_363 : f32 = u_xlat18;
    let x_365 : vec4<f32> = u_xlat1;
    let x_369 : vec4<f32> = x_27.x_Vignette_Params1;
    let x_371 : vec3<f32> = ((vec3<f32>(x_363, x_363, x_363) * vec3<f32>(x_365.x, x_365.y, x_365.z)) + vec3<f32>(x_369.x, x_369.y, x_369.z));
    let x_372 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
    let x_374 : vec3<f32> = u_xlat0;
    let x_375 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_374 * vec3<f32>(x_375.x, x_375.y, x_375.z));
  }
  let x_378 : vec3<f32> = u_xlat0;
  let x_381 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat0 = (x_378 * vec3<f32>(x_381.w, x_381.w, x_381.w));
  let x_389 : vec3<f32> = u_xlat0;
  u_xlat7.x = dot(vec3<f32>(0.439700991f, 0.382977992f, 0.177334994f), x_389);
  let x_396 : vec3<f32> = u_xlat0;
  u_xlat7.y = dot(vec3<f32>(0.089792296f, 0.813422978f, 0.096761599f), x_396);
  let x_403 : vec3<f32> = u_xlat0;
  u_xlat7.z = dot(vec3<f32>(0.017543999f, 0.111543998f, 0.870703995f), x_403);
  let x_407 : f32 = u_xlat7.y;
  let x_409 : f32 = u_xlat7.x;
  u_xlat0.x = min(x_407, x_409);
  let x_413 : f32 = u_xlat7.z;
  let x_415 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_413, x_415);
  let x_420 : f32 = u_xlat7.y;
  let x_422 : f32 = u_xlat7.x;
  u_xlat6.x = max(x_420, x_422);
  let x_426 : f32 = u_xlat7.z;
  let x_428 : f32 = u_xlat6.x;
  u_xlat0.y = max(x_426, x_428);
  let x_431 : vec3<f32> = u_xlat0;
  u_xlat0 = max(vec3<f32>(x_431.x, x_431.y, x_431.y), vec3<f32>(0.0001f, 0.0001f, 0.01f));
  let x_438 : f32 = u_xlat0.x;
  let x_441 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_438) + x_441);
  let x_445 : f32 = u_xlat0.x;
  let x_447 : f32 = u_xlat0.z;
  u_xlat0.x = (x_445 / x_447);
  let x_450 : vec3<f32> = u_xlat7;
  let x_453 : vec3<f32> = u_xlat7;
  u_xlat6 = (-(vec3<f32>(x_450.y, x_450.x, x_450.z)) + vec3<f32>(x_453.z, x_453.y, x_453.x));
  let x_456 : vec3<f32> = u_xlat6;
  let x_458 : vec3<f32> = u_xlat7;
  let x_460 : vec2<f32> = (vec2<f32>(x_456.x, x_456.y) * vec2<f32>(x_458.z, x_458.y));
  let x_461 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_460.x, x_460.y, x_461.z);
  let x_464 : f32 = u_xlat6.y;
  let x_466 : f32 = u_xlat6.x;
  u_xlat6.x = (x_464 + x_466);
  let x_470 : f32 = u_xlat7.x;
  let x_472 : f32 = u_xlat6.z;
  let x_475 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_470 * x_472) + x_475);
  let x_479 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_479, 0.0f);
  let x_483 : f32 = u_xlat6.x;
  u_xlat6.x = sqrt(x_483);
  let x_488 : f32 = u_xlat7.y;
  let x_490 : f32 = u_xlat7.z;
  u_xlat12.x = (x_488 + x_490);
  let x_494 : f32 = u_xlat7.x;
  let x_496 : f32 = u_xlat12.x;
  u_xlat12.x = (x_494 + x_496);
  let x_500 : f32 = u_xlat6.x;
  let x_504 : f32 = u_xlat12.x;
  u_xlat6.x = ((x_500 * 1.75f) + x_504);
  let x_508 : f32 = u_xlat0.x;
  u_xlat18 = (x_508 + -0.400000006f);
  let x_511 : f32 = u_xlat18;
  u_xlat1.x = (x_511 * 2.5f);
  let x_516 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_516)) + 1.0f);
  let x_522 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_522, 0.0f);
  let x_525 : f32 = u_xlat18;
  u_xlatb18 = (x_525 >= 0.0f);
  let x_527 : bool = u_xlatb18;
  u_xlat18 = select(-1.0f, 1.0f, x_527);
  let x_530 : f32 = u_xlat1.x;
  let x_533 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_530) * x_533) + 1.0f);
  let x_537 : f32 = u_xlat18;
  let x_539 : f32 = u_xlat1.x;
  u_xlat6.z = ((x_537 * x_539) + 1.0f);
  let x_543 : vec3<f32> = u_xlat6;
  u_xlat12 = (vec2<f32>(x_543.x, x_543.z) * vec2<f32>(0.333333343f, 0.025f));
  let x_552 : f32 = u_xlat6.x;
  u_xlatb1 = (0.159999996f >= x_552);
  let x_556 : f32 = u_xlat6.x;
  u_xlatb6 = (x_556 >= 0.479999989f);
  let x_561 : f32 = u_xlat12.x;
  u_xlat12.x = (0.079999998f / x_561);
  let x_565 : f32 = u_xlat12.x;
  u_xlat12.x = (x_565 + -0.5f);
  let x_569 : f32 = u_xlat12.x;
  let x_571 : f32 = u_xlat12.y;
  u_xlat12.x = (x_569 * x_571);
  let x_574 : bool = u_xlatb6;
  if (x_574) {
    x_575 = 0.0f;
  } else {
    let x_580 : f32 = u_xlat12.x;
    x_575 = x_580;
  }
  let x_581 : f32 = x_575;
  u_xlat6.x = x_581;
  let x_583 : bool = u_xlatb1;
  if (x_583) {
    let x_588 : f32 = u_xlat12.y;
    x_584 = x_588;
  } else {
    let x_591 : f32 = u_xlat6.x;
    x_584 = x_591;
  }
  let x_592 : f32 = x_584;
  u_xlat6.x = x_592;
  let x_595 : f32 = u_xlat6.x;
  u_xlat6.x = (x_595 + 1.0f);
  let x_598 : vec3<f32> = u_xlat6;
  let x_600 : vec3<f32> = u_xlat7;
  let x_601 : vec3<f32> = (vec3<f32>(x_598.x, x_598.x, x_598.x) * x_600);
  let x_602 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_602.x, x_601.x, x_601.y, x_601.z);
  let x_607 : vec4<f32> = u_xlat2;
  let x_609 : vec4<f32> = u_xlat2;
  let x_612 : vec4<bool> = (vec4<f32>(x_607.z, x_607.w, x_607.z, x_607.w) == vec4<f32>(x_609.y, x_609.z, x_609.y, x_609.z));
  u_xlatb12 = vec2<bool>(x_612.x, x_612.y);
  let x_615 : bool = u_xlatb12.y;
  let x_617 : bool = u_xlatb12.x;
  u_xlatb12.x = (x_615 & x_617);
  let x_621 : f32 = u_xlat7.y;
  let x_623 : f32 = u_xlat6.x;
  let x_626 : f32 = u_xlat2.w;
  u_xlat18 = ((x_621 * x_623) + -(x_626));
  let x_629 : f32 = u_xlat18;
  u_xlat18 = (x_629 * 1.732050776f);
  let x_633 : f32 = u_xlat2.y;
  let x_637 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_633 * 2.0f) + -(x_637));
  let x_642 : f32 = u_xlat7.z;
  let x_645 : f32 = u_xlat6.x;
  let x_648 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_642) * x_645) + x_648);
  let x_651 : f32 = u_xlat18;
  let x_654 : f32 = u_xlat1.x;
  u_xlat13.x = min(abs(x_651), abs(x_654));
  let x_659 : f32 = u_xlat18;
  let x_662 : f32 = u_xlat1.x;
  u_xlat19 = max(abs(x_659), abs(x_662));
  let x_665 : f32 = u_xlat19;
  u_xlat19 = (1.0f / x_665);
  let x_667 : f32 = u_xlat19;
  let x_669 : f32 = u_xlat13.x;
  u_xlat13.x = (x_667 * x_669);
  let x_673 : f32 = u_xlat13.x;
  let x_675 : f32 = u_xlat13.x;
  u_xlat19 = (x_673 * x_675);
  let x_677 : f32 = u_xlat19;
  u_xlat3.x = ((x_677 * 0.0208351f) + -0.085133001f);
  let x_683 : f32 = u_xlat19;
  let x_685 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_683 * x_685) + 0.180141002f);
  let x_690 : f32 = u_xlat19;
  let x_692 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_690 * x_692) + -0.330299497f);
  let x_697 : f32 = u_xlat19;
  let x_699 : f32 = u_xlat3.x;
  u_xlat19 = ((x_697 * x_699) + 0.999866009f);
  let x_703 : f32 = u_xlat19;
  let x_705 : f32 = u_xlat13.x;
  u_xlat3.x = (x_703 * x_705);
  let x_710 : f32 = u_xlat1.x;
  let x_712 : f32 = u_xlat18;
  u_xlatb9 = (abs(x_710) < abs(x_712));
  let x_716 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_716 * -2.0f) + 1.570796371f);
  let x_722 : bool = u_xlatb9;
  if (x_722) {
    let x_727 : f32 = u_xlat3.x;
    x_723 = x_727;
  } else {
    x_723 = 0.0f;
  }
  let x_729 : f32 = x_723;
  u_xlat3.x = x_729;
  let x_732 : f32 = u_xlat13.x;
  let x_733 : f32 = u_xlat19;
  let x_736 : f32 = u_xlat3.x;
  u_xlat13.x = ((x_732 * x_733) + x_736);
  let x_741 : f32 = u_xlat1.x;
  let x_743 : f32 = u_xlat1.x;
  u_xlatb19 = (x_741 < -(x_743));
  let x_746 : bool = u_xlatb19;
  u_xlat19 = select(0.0f, -3.141592741f, x_746);
  let x_749 : f32 = u_xlat19;
  let x_751 : f32 = u_xlat13.x;
  u_xlat13.x = (x_749 + x_751);
  let x_754 : f32 = u_xlat18;
  let x_756 : f32 = u_xlat1.x;
  u_xlat19 = min(x_754, x_756);
  let x_758 : f32 = u_xlat18;
  let x_760 : f32 = u_xlat1.x;
  u_xlat18 = max(x_758, x_760);
  let x_762 : f32 = u_xlat19;
  let x_763 : f32 = u_xlat19;
  u_xlatb1 = (x_762 < -(x_763));
  let x_766 : f32 = u_xlat18;
  let x_767 : f32 = u_xlat18;
  u_xlatb18 = (x_766 >= -(x_767));
  let x_770 : bool = u_xlatb18;
  let x_771 : bool = u_xlatb1;
  u_xlatb18 = (x_770 & x_771);
  let x_773 : bool = u_xlatb18;
  if (x_773) {
    let x_778 : f32 = u_xlat13.x;
    x_774 = -(x_778);
  } else {
    let x_782 : f32 = u_xlat13.x;
    x_774 = x_782;
  }
  let x_783 : f32 = x_774;
  u_xlat18 = x_783;
  let x_784 : f32 = u_xlat18;
  u_xlat18 = (x_784 * 57.295780182f);
  let x_788 : bool = u_xlatb12.x;
  let x_789 : f32 = u_xlat18;
  u_xlat12.x = select(x_789, 0.0f, x_788);
  let x_793 : f32 = u_xlat12.x;
  u_xlatb18 = (x_793 < 0.0f);
  let x_796 : f32 = u_xlat12.x;
  u_xlat1.x = (x_796 + 360.0f);
  let x_800 : bool = u_xlatb18;
  if (x_800) {
    let x_805 : f32 = u_xlat1.x;
    x_801 = x_805;
  } else {
    let x_808 : f32 = u_xlat12.x;
    x_801 = x_808;
  }
  let x_809 : f32 = x_801;
  u_xlat12.x = x_809;
  let x_812 : f32 = u_xlat12.x;
  u_xlatb18 = (x_812 < -180.0f);
  let x_817 : f32 = u_xlat12.x;
  u_xlatb1 = (180.0f < x_817);
  let x_819 : vec2<f32> = u_xlat12;
  u_xlat13 = (vec2<f32>(x_819.x, x_819.x) + vec2<f32>(360.0f, -360.0f));
  let x_824 : bool = u_xlatb1;
  if (x_824) {
    let x_829 : f32 = u_xlat13.y;
    x_825 = x_829;
  } else {
    let x_832 : f32 = u_xlat12.x;
    x_825 = x_832;
  }
  let x_833 : f32 = x_825;
  u_xlat12.x = x_833;
  let x_835 : bool = u_xlatb18;
  if (x_835) {
    let x_840 : f32 = u_xlat13.x;
    x_836 = x_840;
  } else {
    let x_843 : f32 = u_xlat12.x;
    x_836 = x_843;
  }
  let x_844 : f32 = x_836;
  u_xlat12.x = x_844;
  let x_847 : f32 = u_xlat12.x;
  u_xlat12.x = (x_847 * 0.014814815f);
  let x_852 : f32 = u_xlat12.x;
  u_xlat12.x = (-(abs(x_852)) + 1.0f);
  let x_858 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_858, 0.0f);
  let x_862 : f32 = u_xlat12.x;
  u_xlat18 = ((x_862 * -2.0f) + 3.0f);
  let x_867 : f32 = u_xlat12.x;
  let x_869 : f32 = u_xlat12.x;
  u_xlat12.x = (x_867 * x_869);
  let x_873 : f32 = u_xlat12.x;
  let x_874 : f32 = u_xlat18;
  u_xlat12.x = (x_873 * x_874);
  let x_878 : f32 = u_xlat12.x;
  let x_880 : f32 = u_xlat12.x;
  u_xlat12.x = (x_878 * x_880);
  let x_884 : f32 = u_xlat0.x;
  let x_886 : f32 = u_xlat12.x;
  u_xlat0.x = (x_884 * x_886);
  let x_890 : f32 = u_xlat7.x;
  let x_893 : f32 = u_xlat6.x;
  u_xlat6.x = ((-(x_890) * x_893) + 0.029999999f);
  let x_899 : f32 = u_xlat6.x;
  let x_901 : f32 = u_xlat0.x;
  u_xlat0.x = (x_899 * x_901);
  let x_905 : f32 = u_xlat0.x;
  let x_909 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_905 * 0.180000007f) + x_909);
  let x_916 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.451439261f, -0.236510754f, -0.214928567f), vec3<f32>(x_916.x, x_916.z, x_916.w));
  let x_924 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.076553777f, 1.176229715f, -0.099675924f), vec3<f32>(x_924.x, x_924.z, x_924.w));
  let x_932 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.008316148f, -0.00603244966f, 0.997716308f), vec3<f32>(x_932.x, x_932.z, x_932.w));
  let x_936 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_936, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_939 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_939, vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_945 : f32 = u_xlat18;
  let x_948 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_945, x_945, x_945)) + x_948);
  let x_950 : vec3<f32> = u_xlat0;
  let x_954 : f32 = u_xlat18;
  u_xlat0 = ((x_950 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f)) + vec3<f32>(x_954, x_954, x_954));
  let x_957 : vec3<f32> = u_xlat0;
  let x_960 : vec3<f32> = (x_957 + vec3<f32>(0.024578599f, 0.024578599f, 0.024578599f));
  let x_961 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
  let x_963 : vec3<f32> = u_xlat0;
  let x_964 : vec4<f32> = u_xlat1;
  let x_969 : vec3<f32> = ((x_963 * vec3<f32>(x_964.x, x_964.y, x_964.z)) + vec3<f32>(-0.000090537f, -0.000090537f, -0.000090537f));
  let x_970 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
  let x_972 : vec3<f32> = u_xlat0;
  let x_978 : vec3<f32> = ((x_972 * vec3<f32>(0.983729005f, 0.983729005f, 0.983729005f)) + vec3<f32>(0.432951003f, 0.432951003f, 0.432951003f));
  let x_979 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
  let x_981 : vec3<f32> = u_xlat0;
  let x_982 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_981 * vec3<f32>(x_982.x, x_982.y, x_982.z)) + vec3<f32>(0.238080993f, 0.238080993f, 0.238080993f));
  let x_988 : vec4<f32> = u_xlat1;
  let x_990 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_988.x, x_988.y, x_988.z) / x_990);
  let x_996 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), x_996);
  let x_1003 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), x_1003);
  let x_1010 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), x_1010);
  let x_1013 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_1013.x, x_1013.y, x_1013.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1018 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1018, 0.0001f);
  let x_1021 : vec4<f32> = u_xlat1;
  let x_1023 : vec3<f32> = u_xlat0;
  let x_1025 : vec2<f32> = (vec2<f32>(x_1021.x, x_1021.y) / vec2<f32>(x_1023.x, x_1023.x));
  let x_1026 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1025.x, x_1025.y, x_1026.z);
  let x_1029 : f32 = u_xlat1.y;
  u_xlat18 = max(x_1029, 0.0f);
  let x_1031 : f32 = u_xlat18;
  u_xlat18 = min(x_1031, 65504.0f);
  let x_1034 : f32 = u_xlat18;
  u_xlat18 = log2(x_1034);
  let x_1036 : f32 = u_xlat18;
  u_xlat18 = (x_1036 * 0.981100023f);
  let x_1039 : f32 = u_xlat18;
  u_xlat1.y = exp2(x_1039);
  let x_1043 : f32 = u_xlat0.y;
  u_xlat18 = max(x_1043, 0.0001f);
  let x_1046 : f32 = u_xlat1.y;
  let x_1047 : f32 = u_xlat18;
  u_xlat18 = (x_1046 / x_1047);
  let x_1050 : f32 = u_xlat0.x;
  u_xlat19 = (-(x_1050) + 1.0f);
  let x_1054 : f32 = u_xlat0.y;
  let x_1056 : f32 = u_xlat19;
  u_xlat0.z = (-(x_1054) + x_1056);
  let x_1059 : f32 = u_xlat18;
  let x_1061 : vec3<f32> = u_xlat0;
  let x_1063 : vec2<f32> = (vec2<f32>(x_1059, x_1059) * vec2<f32>(x_1061.x, x_1061.z));
  let x_1064 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1063.x, x_1064.y, x_1063.y, x_1064.w);
  let x_1070 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.641023397f, -0.324803293f, -0.236424699f), vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
  let x_1078 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.663662851f, 1.61533165f, 0.016756348f), vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1086 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.011721894f, -0.008284442f, 0.988394856f), vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1090 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_1090, vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_1092 : f32 = u_xlat18;
  let x_1095 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_1092, x_1092, x_1092)) + x_1095);
  let x_1097 : vec3<f32> = u_xlat0;
  let x_1101 : f32 = u_xlat18;
  u_xlat0 = ((x_1097 * vec3<f32>(0.930000007f, 0.930000007f, 0.930000007f)) + vec3<f32>(x_1101, x_1101, x_1101));
  let x_1104 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), x_1104);
  let x_1107 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), x_1107);
  let x_1110 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), x_1110);
  let x_1117 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.987223983f, -0.00611327f, 0.015953301f), vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1125 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836f, 1.001860023f, 0.0053302f), vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1133 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.00307257f, -0.00509595f, 1.081680059f), vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1141 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.240969896f, -1.537383199f, -0.498610765f), x_1141);
  let x_1145 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1145, 0.0f, 1.0f);
  let x_1152 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.969243646f, 1.875967503f, 0.041555058f), x_1152);
  let x_1156 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1156, 0.0f, 1.0f);
  let x_1163 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008f, -0.203976959f, 1.05697155f), x_1163);
  let x_1167 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1167, 0.0f, 1.0f);
  let x_1175 : f32 = x_27.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1175);
  let x_1179 : bool = u_xlatb0.x;
  if (x_1179) {
    let x_1182 : vec4<f32> = u_xlat1;
    u_xlat0 = (vec3<f32>(x_1182.x, x_1182.y, x_1182.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_1187 : vec4<f32> = u_xlat1;
    let x_1189 : vec3<f32> = log2(vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
    let x_1190 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
    let x_1192 : vec4<f32> = u_xlat2;
    let x_1196 : vec3<f32> = (vec3<f32>(x_1192.x, x_1192.y, x_1192.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_1197 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
    let x_1199 : vec4<f32> = u_xlat2;
    let x_1201 : vec3<f32> = exp2(vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
    let x_1202 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
    let x_1204 : vec4<f32> = u_xlat2;
    let x_1211 : vec3<f32> = ((vec3<f32>(x_1204.x, x_1204.y, x_1204.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_1212 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1212.w);
    let x_1217 : vec4<f32> = u_xlat1;
    let x_1219 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1217.x));
    u_xlatb3 = vec3<bool>(x_1219.x, x_1219.y, x_1219.z);
    let x_1222 : vec3<f32> = u_xlat0;
    hlslcc_movcTemp = x_1222;
    let x_1224 : bool = u_xlatb3.x;
    if (x_1224) {
      let x_1229 : f32 = u_xlat0.x;
      x_1225 = x_1229;
    } else {
      let x_1232 : f32 = u_xlat2.x;
      x_1225 = x_1232;
    }
    let x_1233 : f32 = x_1225;
    hlslcc_movcTemp.x = x_1233;
    let x_1236 : bool = u_xlatb3.y;
    if (x_1236) {
      let x_1241 : f32 = u_xlat0.y;
      x_1237 = x_1241;
    } else {
      let x_1244 : f32 = u_xlat2.y;
      x_1237 = x_1244;
    }
    let x_1245 : f32 = x_1237;
    hlslcc_movcTemp.y = x_1245;
    let x_1248 : bool = u_xlatb3.z;
    if (x_1248) {
      let x_1253 : f32 = u_xlat0.z;
      x_1249 = x_1253;
    } else {
      let x_1256 : f32 = u_xlat2.z;
      x_1249 = x_1256;
    }
    let x_1257 : f32 = x_1249;
    hlslcc_movcTemp.z = x_1257;
    let x_1259 : vec3<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1259;
    let x_1260 : vec3<f32> = u_xlat0;
    let x_1263 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1265 : vec3<f32> = (vec3<f32>(x_1260.z, x_1260.x, x_1260.y) * vec3<f32>(x_1263.z, x_1263.z, x_1263.z));
    let x_1266 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
    let x_1269 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_1269);
    let x_1272 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1274 : vec2<f32> = (vec2<f32>(x_1272.x, x_1272.y) * vec2<f32>(0.5f, 0.5f));
    let x_1275 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1274.x, x_1275.y, x_1275.z, x_1274.y);
    let x_1277 : vec4<f32> = u_xlat2;
    let x_1280 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1283 : vec4<f32> = u_xlat2;
    let x_1285 : vec2<f32> = ((vec2<f32>(x_1277.y, x_1277.z) * vec2<f32>(x_1280.x, x_1280.y)) + vec2<f32>(x_1283.x, x_1283.w));
    let x_1286 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1286.x, x_1285.x, x_1285.y, x_1286.w);
    let x_1288 : f32 = u_xlat18;
    let x_1290 : f32 = x_27.x_UserLut_Params.y;
    let x_1293 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1288 * x_1290) + x_1293);
    let x_1300 : vec4<f32> = u_xlat2;
    let x_1302 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1300.x, x_1300.z), 0.0f);
    let x_1303 : vec3<f32> = vec3<f32>(x_1302.x, x_1302.y, x_1302.z);
    let x_1304 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
    let x_1307 : f32 = x_27.x_UserLut_Params.y;
    u_xlat4.x = x_1307;
    u_xlat4.y = 0.0f;
    let x_1310 : vec4<f32> = u_xlat2;
    let x_1312 : vec4<f32> = u_xlat4;
    let x_1314 : vec2<f32> = (vec2<f32>(x_1310.x, x_1310.z) + vec2<f32>(x_1312.x, x_1312.y));
    let x_1315 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1314.x, x_1314.y, x_1315.z, x_1315.w);
    let x_1320 : vec4<f32> = u_xlat2;
    let x_1322 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1320.x, x_1320.y), 0.0f);
    let x_1323 : vec3<f32> = vec3<f32>(x_1322.x, x_1322.y, x_1322.z);
    let x_1324 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1324.w);
    let x_1327 : f32 = u_xlat0.z;
    let x_1329 : f32 = x_27.x_UserLut_Params.z;
    let x_1331 : f32 = u_xlat18;
    u_xlat18 = ((x_1327 * x_1329) + -(x_1331));
    let x_1334 : vec4<f32> = u_xlat3;
    let x_1337 : vec4<f32> = u_xlat2;
    let x_1339 : vec3<f32> = (-(vec3<f32>(x_1334.x, x_1334.y, x_1334.z)) + vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
    let x_1340 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
    let x_1342 : f32 = u_xlat18;
    let x_1344 : vec4<f32> = u_xlat2;
    let x_1347 : vec4<f32> = u_xlat3;
    let x_1349 : vec3<f32> = ((vec3<f32>(x_1342, x_1342, x_1342) * vec3<f32>(x_1344.x, x_1344.y, x_1344.z)) + vec3<f32>(x_1347.x, x_1347.y, x_1347.z));
    let x_1350 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1349.x, x_1349.y, x_1349.z, x_1350.w);
    let x_1352 : vec3<f32> = u_xlat0;
    let x_1354 : vec4<f32> = u_xlat2;
    let x_1356 : vec3<f32> = (-(x_1352) + vec3<f32>(x_1354.x, x_1354.y, x_1354.z));
    let x_1357 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1357.w);
    let x_1360 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1362 : vec4<f32> = u_xlat2;
    let x_1365 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_1360.w, x_1360.w, x_1360.w) * vec3<f32>(x_1362.x, x_1362.y, x_1362.z)) + x_1365);
    let x_1367 : vec3<f32> = u_xlat0;
    let x_1370 : vec3<f32> = (x_1367 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1371 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1371.w);
    let x_1373 : vec3<f32> = u_xlat0;
    let x_1376 : vec3<f32> = (x_1373 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1377 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1377.w);
    let x_1379 : vec4<f32> = u_xlat3;
    let x_1383 : vec3<f32> = (vec3<f32>(x_1379.x, x_1379.y, x_1379.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1384 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
    let x_1386 : vec4<f32> = u_xlat3;
    let x_1389 : vec3<f32> = log2(abs(vec3<f32>(x_1386.x, x_1386.y, x_1386.z)));
    let x_1390 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1389.x, x_1389.y, x_1389.z, x_1390.w);
    let x_1392 : vec4<f32> = u_xlat3;
    let x_1396 : vec3<f32> = (vec3<f32>(x_1392.x, x_1392.y, x_1392.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1397 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1397.w);
    let x_1399 : vec4<f32> = u_xlat3;
    let x_1401 : vec3<f32> = exp2(vec3<f32>(x_1399.x, x_1399.y, x_1399.z));
    let x_1402 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1402.w);
    let x_1406 : vec3<f32> = u_xlat0;
    let x_1408 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1406.x));
    u_xlatb0 = vec3<bool>(x_1408.x, x_1408.y, x_1408.z);
    let x_1411 : bool = u_xlatb0.x;
    if (x_1411) {
      let x_1416 : f32 = u_xlat2.x;
      x_1412 = x_1416;
    } else {
      let x_1419 : f32 = u_xlat3.x;
      x_1412 = x_1419;
    }
    let x_1420 : f32 = x_1412;
    u_xlat1.x = x_1420;
    let x_1423 : bool = u_xlatb0.y;
    if (x_1423) {
      let x_1428 : f32 = u_xlat2.y;
      x_1424 = x_1428;
    } else {
      let x_1431 : f32 = u_xlat3.y;
      x_1424 = x_1431;
    }
    let x_1432 : f32 = x_1424;
    u_xlat1.y = x_1432;
    let x_1435 : bool = u_xlatb0.z;
    if (x_1435) {
      let x_1440 : f32 = u_xlat2.z;
      x_1436 = x_1440;
    } else {
      let x_1443 : f32 = u_xlat3.z;
      x_1436 = x_1443;
    }
    let x_1444 : f32 = x_1436;
    u_xlat1.z = x_1444;
  }
  let x_1446 : vec4<f32> = u_xlat1;
  let x_1449 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_1446.z, x_1446.x, x_1446.y) * vec3<f32>(x_1449.z, x_1449.z, x_1449.z));
  let x_1453 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1453);
  let x_1457 : vec4<f32> = x_27.x_Lut_Params;
  let x_1459 : vec2<f32> = (vec2<f32>(x_1457.x, x_1457.y) * vec2<f32>(0.5f, 0.5f));
  let x_1460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1459.x, x_1459.y, x_1460.z, x_1460.w);
  let x_1462 : vec3<f32> = u_xlat0;
  let x_1465 : vec4<f32> = x_27.x_Lut_Params;
  let x_1468 : vec4<f32> = u_xlat1;
  let x_1470 : vec2<f32> = ((vec2<f32>(x_1462.y, x_1462.z) * vec2<f32>(x_1465.x, x_1465.y)) + vec2<f32>(x_1468.x, x_1468.y));
  let x_1471 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1471.x, x_1470.x, x_1470.y, x_1471.w);
  let x_1474 : f32 = u_xlat0.x;
  let x_1476 : f32 = x_27.x_Lut_Params.y;
  let x_1479 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1474 * x_1476) + x_1479);
  let x_1486 : vec4<f32> = u_xlat2;
  let x_1488 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1486.x, x_1486.z), 0.0f);
  u_xlat6 = vec3<f32>(x_1488.x, x_1488.y, x_1488.z);
  let x_1491 : f32 = x_27.x_Lut_Params.y;
  u_xlat1.x = x_1491;
  u_xlat1.y = 0.0f;
  let x_1494 : vec4<f32> = u_xlat1;
  let x_1496 : vec4<f32> = u_xlat2;
  let x_1498 : vec2<f32> = (vec2<f32>(x_1494.x, x_1494.y) + vec2<f32>(x_1496.x, x_1496.z));
  let x_1499 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1498.x, x_1498.y, x_1499.z, x_1499.w);
  let x_1504 : vec4<f32> = u_xlat1;
  let x_1506 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1504.x, x_1504.y), 0.0f);
  let x_1507 : vec3<f32> = vec3<f32>(x_1506.x, x_1506.y, x_1506.z);
  let x_1508 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1507.x, x_1507.y, x_1508.z, x_1507.z);
  let x_1511 : f32 = u_xlat1.z;
  let x_1513 : f32 = x_27.x_Lut_Params.z;
  let x_1516 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1511 * x_1513) + -(x_1516));
  let x_1520 : vec3<f32> = u_xlat6;
  let x_1522 : vec4<f32> = u_xlat1;
  let x_1524 : vec3<f32> = (-(x_1520) + vec3<f32>(x_1522.x, x_1522.y, x_1522.w));
  let x_1525 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1524.x, x_1524.y, x_1524.z, x_1525.w);
  let x_1527 : vec3<f32> = u_xlat0;
  let x_1529 : vec4<f32> = u_xlat1;
  let x_1532 : vec3<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_1527.x, x_1527.x, x_1527.x) * vec3<f32>(x_1529.x, x_1529.y, x_1529.z)) + x_1532);
  let x_1534 : vec2<f32> = vs_TEXCOORD0;
  let x_1537 : vec4<f32> = x_27.x_Grain_TilingParams;
  let x_1541 : vec4<f32> = x_27.x_Grain_TilingParams;
  let x_1543 : vec2<f32> = ((x_1534 * vec2<f32>(x_1537.x, x_1537.y)) + vec2<f32>(x_1541.z, x_1541.w));
  let x_1544 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1543.x, x_1543.y, x_1544.z, x_1544.w);
  let x_1551 : vec4<f32> = u_xlat1;
  let x_1554 : f32 = x_27.x_GlobalMipBias.x;
  let x_1555 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1551.x, x_1551.y), x_1554);
  u_xlat18 = x_1555.w;
  let x_1557 : f32 = u_xlat18;
  u_xlat18 = (x_1557 + -0.5f);
  let x_1559 : f32 = u_xlat18;
  let x_1560 : f32 = u_xlat18;
  u_xlat18 = (x_1559 + x_1560);
  let x_1562 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_1562, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1570 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1570);
  let x_1575 : f32 = x_27.x_Grain_Params.y;
  let x_1577 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1575 * -(x_1577)) + 1.0f);
  let x_1582 : f32 = u_xlat18;
  let x_1584 : vec3<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1582, x_1582, x_1582) * x_1584);
  let x_1586 : vec3<f32> = u_xlat7;
  let x_1589 : vec2<f32> = x_27.x_Grain_Params;
  u_xlat7 = (x_1586 * vec3<f32>(x_1589.x, x_1589.x, x_1589.x));
  let x_1592 : vec3<f32> = u_xlat7;
  let x_1593 : vec4<f32> = u_xlat1;
  let x_1596 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_1592 * vec3<f32>(x_1593.x, x_1593.x, x_1593.x)) + x_1596);
  let x_1598 : vec3<f32> = u_xlat0;
  let x_1599 : vec3<f32> = (x_1598 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1600 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1599.x, x_1599.y, x_1599.z, x_1600.w);
  let x_1602 : vec3<f32> = u_xlat0;
  let x_1604 : vec3<f32> = log2(abs(x_1602));
  let x_1605 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1604.x, x_1604.y, x_1604.z, x_1605.w);
  let x_1607 : vec4<f32> = u_xlat2;
  let x_1609 : vec3<f32> = (vec3<f32>(x_1607.x, x_1607.y, x_1607.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1610 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1609.x, x_1609.y, x_1609.z, x_1610.w);
  let x_1612 : vec4<f32> = u_xlat2;
  let x_1614 : vec3<f32> = exp2(vec3<f32>(x_1612.x, x_1612.y, x_1612.z));
  let x_1615 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1614.x, x_1614.y, x_1614.z, x_1615.w);
  let x_1617 : vec4<f32> = u_xlat2;
  let x_1620 : vec3<f32> = ((vec3<f32>(x_1617.x, x_1617.y, x_1617.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1621 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1621.w);
  let x_1623 : vec3<f32> = u_xlat0;
  let x_1625 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1623.x, x_1623.y, x_1623.z, x_1623.x));
  u_xlatb0 = vec3<bool>(x_1625.x, x_1625.y, x_1625.z);
  let x_1628 : bool = u_xlatb0.x;
  if (x_1628) {
    let x_1633 : f32 = u_xlat1.x;
    x_1629 = x_1633;
  } else {
    let x_1636 : f32 = u_xlat2.x;
    x_1629 = x_1636;
  }
  let x_1637 : f32 = x_1629;
  u_xlat0.x = x_1637;
  let x_1640 : bool = u_xlatb0.y;
  if (x_1640) {
    let x_1645 : f32 = u_xlat1.y;
    x_1641 = x_1645;
  } else {
    let x_1648 : f32 = u_xlat2.y;
    x_1641 = x_1648;
  }
  let x_1649 : f32 = x_1641;
  u_xlat0.y = x_1649;
  let x_1652 : bool = u_xlatb0.z;
  if (x_1652) {
    let x_1657 : f32 = u_xlat1.z;
    x_1653 = x_1657;
  } else {
    let x_1660 : f32 = u_xlat2.z;
    x_1653 = x_1660;
  }
  let x_1661 : f32 = x_1653;
  u_xlat0.z = x_1661;
  let x_1663 : vec2<f32> = vs_TEXCOORD0;
  let x_1666 : vec4<f32> = x_27.x_Dithering_Params;
  let x_1670 : vec4<f32> = x_27.x_Dithering_Params;
  let x_1672 : vec2<f32> = ((x_1663 * vec2<f32>(x_1666.x, x_1666.y)) + vec2<f32>(x_1670.z, x_1670.w));
  let x_1673 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1672.x, x_1672.y, x_1673.z, x_1673.w);
  let x_1680 : vec4<f32> = u_xlat1;
  let x_1683 : f32 = x_27.x_GlobalMipBias.x;
  let x_1684 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1680.x, x_1680.y), x_1683);
  u_xlat18 = x_1684.w;
  let x_1686 : f32 = u_xlat18;
  u_xlat18 = ((x_1686 * 2.0f) + -1.0f);
  let x_1689 : f32 = u_xlat18;
  u_xlatb1 = (x_1689 >= 0.0f);
  let x_1691 : bool = u_xlatb1;
  u_xlat1.x = select(-1.0f, 1.0f, x_1691);
  let x_1694 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_1694)) + 1.0f);
  let x_1698 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_1698);
  let x_1700 : f32 = u_xlat18;
  u_xlat18 = (-(x_1700) + 1.0f);
  let x_1703 : f32 = u_xlat18;
  let x_1705 : f32 = u_xlat1.x;
  u_xlat18 = (x_1703 * x_1705);
  let x_1707 : vec3<f32> = u_xlat0;
  let x_1708 : vec3<f32> = (x_1707 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1709 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1709.w);
  let x_1711 : vec3<f32> = u_xlat0;
  let x_1713 : vec3<f32> = log2(abs(x_1711));
  let x_1714 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1713.x, x_1713.y, x_1713.z, x_1714.w);
  let x_1716 : vec4<f32> = u_xlat2;
  let x_1718 : vec3<f32> = (vec3<f32>(x_1716.x, x_1716.y, x_1716.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1719 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1718.x, x_1718.y, x_1718.z, x_1719.w);
  let x_1721 : vec4<f32> = u_xlat2;
  let x_1723 : vec3<f32> = exp2(vec3<f32>(x_1721.x, x_1721.y, x_1721.z));
  let x_1724 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1723.x, x_1723.y, x_1723.z, x_1724.w);
  let x_1726 : vec4<f32> = u_xlat2;
  let x_1729 : vec3<f32> = ((vec3<f32>(x_1726.x, x_1726.y, x_1726.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1730 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
  let x_1732 : vec3<f32> = u_xlat0;
  let x_1734 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1732.x));
  u_xlatb0 = vec3<bool>(x_1734.x, x_1734.y, x_1734.z);
  let x_1737 : bool = u_xlatb0.x;
  if (x_1737) {
    let x_1742 : f32 = u_xlat1.x;
    x_1738 = x_1742;
  } else {
    let x_1745 : f32 = u_xlat2.x;
    x_1738 = x_1745;
  }
  let x_1746 : f32 = x_1738;
  u_xlat0.x = x_1746;
  let x_1749 : bool = u_xlatb0.y;
  if (x_1749) {
    let x_1754 : f32 = u_xlat1.y;
    x_1750 = x_1754;
  } else {
    let x_1757 : f32 = u_xlat2.y;
    x_1750 = x_1757;
  }
  let x_1758 : f32 = x_1750;
  u_xlat0.y = x_1758;
  let x_1761 : bool = u_xlatb0.z;
  if (x_1761) {
    let x_1766 : f32 = u_xlat1.z;
    x_1762 = x_1766;
  } else {
    let x_1769 : f32 = u_xlat2.z;
    x_1762 = x_1769;
  }
  let x_1770 : f32 = x_1762;
  u_xlat0.z = x_1770;
  let x_1772 : f32 = u_xlat18;
  let x_1777 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1772, x_1772, x_1772) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_1777);
  let x_1779 : vec3<f32> = u_xlat0;
  let x_1780 : vec3<f32> = (x_1779 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1781 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1781.w);
  let x_1783 : vec3<f32> = u_xlat0;
  let x_1784 : vec3<f32> = (x_1783 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1785 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1784.x, x_1784.y, x_1784.z, x_1785.w);
  let x_1787 : vec4<f32> = u_xlat2;
  let x_1789 : vec3<f32> = (vec3<f32>(x_1787.x, x_1787.y, x_1787.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1790 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1789.x, x_1789.y, x_1789.z, x_1790.w);
  let x_1792 : vec4<f32> = u_xlat2;
  let x_1795 : vec3<f32> = log2(abs(vec3<f32>(x_1792.x, x_1792.y, x_1792.z)));
  let x_1796 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
  let x_1798 : vec4<f32> = u_xlat2;
  let x_1800 : vec3<f32> = (vec3<f32>(x_1798.x, x_1798.y, x_1798.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1801 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1800.x, x_1800.y, x_1800.z, x_1801.w);
  let x_1803 : vec4<f32> = u_xlat2;
  let x_1805 : vec3<f32> = exp2(vec3<f32>(x_1803.x, x_1803.y, x_1803.z));
  let x_1806 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1805.x, x_1805.y, x_1805.z, x_1806.w);
  let x_1808 : vec3<f32> = u_xlat0;
  let x_1810 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1808.x));
  u_xlatb0 = vec3<bool>(x_1810.x, x_1810.y, x_1810.z);
  let x_1813 : bool = u_xlatb0.x;
  if (x_1813) {
    let x_1818 : f32 = u_xlat1.x;
    x_1814 = x_1818;
  } else {
    let x_1821 : f32 = u_xlat2.x;
    x_1814 = x_1821;
  }
  let x_1822 : f32 = x_1814;
  u_xlat0.x = x_1822;
  let x_1825 : bool = u_xlatb0.y;
  if (x_1825) {
    let x_1830 : f32 = u_xlat1.y;
    x_1826 = x_1830;
  } else {
    let x_1833 : f32 = u_xlat2.y;
    x_1826 = x_1833;
  }
  let x_1834 : f32 = x_1826;
  u_xlat0.y = x_1834;
  let x_1837 : bool = u_xlatb0.z;
  if (x_1837) {
    let x_1842 : f32 = u_xlat1.z;
    x_1838 = x_1842;
  } else {
    let x_1845 : f32 = u_xlat2.z;
    x_1838 = x_1845;
  }
  let x_1846 : f32 = x_1838;
  u_xlat0.z = x_1846;
  let x_1850 : vec3<f32> = u_xlat0;
  let x_1851 : vec3<f32> = max(x_1850, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1852 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1851.x, x_1851.y, x_1851.z, x_1852.w);
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
