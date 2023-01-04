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
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

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
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : vec2<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_553 : f32;
  var x_565 : f32;
  var x_577 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_747 : f32;
  var x_759 : f32;
  var x_771 : f32;
  var u_xlat7 : vec3<f32>;
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
  let x_382 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_378.z, x_378.x, x_378.y) * vec3<f32>(x_382.w, x_382.w, x_382.w));
  let x_385 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_385 * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_392 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_392, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_395 : vec3<f32> = u_xlat0;
  u_xlat0 = log2(x_395);
  let x_397 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_397 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_404 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_404, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_409 : vec3<f32> = u_xlat0;
  let x_411 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat6 = (x_409 * vec3<f32>(x_411.z, x_411.z, x_411.z));
  let x_415 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_415);
  let x_419 : vec4<f32> = x_27.x_Lut_Params;
  let x_421 : vec2<f32> = (vec2<f32>(x_419.x, x_419.y) * vec2<f32>(0.5f, 0.5f));
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
  let x_424 : vec3<f32> = u_xlat6;
  let x_427 : vec4<f32> = x_27.x_Lut_Params;
  let x_430 : vec4<f32> = u_xlat1;
  let x_432 : vec2<f32> = ((vec2<f32>(x_424.y, x_424.z) * vec2<f32>(x_427.x, x_427.y)) + vec2<f32>(x_430.x, x_430.y));
  let x_433 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_433.x, x_432.x, x_432.y, x_433.w);
  let x_436 : f32 = u_xlat6.x;
  let x_438 : f32 = x_27.x_Lut_Params.y;
  let x_441 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_436 * x_438) + x_441);
  let x_448 : vec4<f32> = u_xlat1;
  let x_450 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_448.x, x_448.z), 0.0f);
  let x_451 : vec3<f32> = vec3<f32>(x_450.x, x_450.y, x_450.z);
  let x_452 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_455 : f32 = x_27.x_Lut_Params.y;
  u_xlat3.x = x_455;
  u_xlat3.y = 0.0f;
  let x_459 : vec4<f32> = u_xlat1;
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat12 = (vec2<f32>(x_459.x, x_459.z) + vec2<f32>(x_461.x, x_461.y));
  let x_467 : vec2<f32> = u_xlat12;
  let x_468 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_467, 0.0f);
  let x_469 : vec3<f32> = vec3<f32>(x_468.x, x_468.y, x_468.z);
  let x_470 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_473 : f32 = u_xlat0.x;
  let x_475 : f32 = x_27.x_Lut_Params.z;
  let x_478 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_473 * x_475) + -(x_478));
  let x_482 : vec4<f32> = u_xlat2;
  let x_485 : vec4<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_482.x, x_482.y, x_482.z)) + vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : vec3<f32> = u_xlat0;
  let x_490 : vec3<f32> = u_xlat6;
  let x_492 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_488.x, x_488.x, x_488.x) * x_490) + vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_497 : f32 = x_27.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_497);
  let x_499 : bool = u_xlatb18;
  if (x_499) {
    let x_502 : vec3<f32> = u_xlat0;
    u_xlat0 = x_502;
    let x_503 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_503, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_507 : vec3<f32> = u_xlat0;
    let x_510 : vec3<f32> = (x_507 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_511 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
    let x_513 : vec3<f32> = u_xlat0;
    let x_514 : vec3<f32> = log2(x_513);
    let x_515 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
    let x_517 : vec4<f32> = u_xlat2;
    let x_521 : vec3<f32> = (vec3<f32>(x_517.x, x_517.y, x_517.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_522 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
    let x_524 : vec4<f32> = u_xlat2;
    let x_526 : vec3<f32> = exp2(vec3<f32>(x_524.x, x_524.y, x_524.z));
    let x_527 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
    let x_529 : vec4<f32> = u_xlat2;
    let x_536 : vec3<f32> = ((vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_537 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
    let x_544 : vec3<f32> = u_xlat0;
    let x_547 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_544.x, x_544.y, x_544.z, x_544.x));
    u_xlatb3 = vec3<bool>(x_547.x, x_547.y, x_547.z);
    let x_550 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_550;
    let x_552 : bool = u_xlatb3.x;
    if (x_552) {
      let x_557 : f32 = u_xlat1.x;
      x_553 = x_557;
    } else {
      let x_560 : f32 = u_xlat2.x;
      x_553 = x_560;
    }
    let x_561 : f32 = x_553;
    hlslcc_movcTemp.x = x_561;
    let x_564 : bool = u_xlatb3.y;
    if (x_564) {
      let x_569 : f32 = u_xlat1.y;
      x_565 = x_569;
    } else {
      let x_572 : f32 = u_xlat2.y;
      x_565 = x_572;
    }
    let x_573 : f32 = x_565;
    hlslcc_movcTemp.y = x_573;
    let x_576 : bool = u_xlatb3.z;
    if (x_576) {
      let x_581 : f32 = u_xlat1.z;
      x_577 = x_581;
    } else {
      let x_584 : f32 = u_xlat2.z;
      x_577 = x_584;
    }
    let x_585 : f32 = x_577;
    hlslcc_movcTemp.z = x_585;
    let x_587 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_587;
    let x_588 : vec4<f32> = u_xlat1;
    let x_591 : vec4<f32> = x_27.x_UserLut_Params;
    let x_593 : vec3<f32> = (vec3<f32>(x_588.z, x_588.x, x_588.y) * vec3<f32>(x_591.z, x_591.z, x_591.z));
    let x_594 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
    let x_597 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_597);
    let x_600 : vec4<f32> = x_27.x_UserLut_Params;
    let x_602 : vec2<f32> = (vec2<f32>(x_600.x, x_600.y) * vec2<f32>(0.5f, 0.5f));
    let x_603 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_602.x, x_603.y, x_603.z, x_602.y);
    let x_605 : vec4<f32> = u_xlat2;
    let x_608 : vec4<f32> = x_27.x_UserLut_Params;
    let x_611 : vec4<f32> = u_xlat2;
    let x_613 : vec2<f32> = ((vec2<f32>(x_605.y, x_605.z) * vec2<f32>(x_608.x, x_608.y)) + vec2<f32>(x_611.x, x_611.w));
    let x_614 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_614.x, x_613.x, x_613.y, x_614.w);
    let x_616 : f32 = u_xlat18;
    let x_618 : f32 = x_27.x_UserLut_Params.y;
    let x_621 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_616 * x_618) + x_621);
    let x_628 : vec4<f32> = u_xlat2;
    let x_630 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_628.x, x_628.z), 0.0f);
    let x_631 : vec3<f32> = vec3<f32>(x_630.x, x_630.y, x_630.z);
    let x_632 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
    let x_635 : f32 = x_27.x_UserLut_Params.y;
    u_xlat4.x = x_635;
    u_xlat4.y = 0.0f;
    let x_638 : vec4<f32> = u_xlat2;
    let x_640 : vec4<f32> = u_xlat4;
    let x_642 : vec2<f32> = (vec2<f32>(x_638.x, x_638.z) + vec2<f32>(x_640.x, x_640.y));
    let x_643 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
    let x_648 : vec4<f32> = u_xlat2;
    let x_650 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_648.x, x_648.y), 0.0f);
    let x_651 : vec3<f32> = vec3<f32>(x_650.x, x_650.y, x_650.z);
    let x_652 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
    let x_655 : f32 = u_xlat1.z;
    let x_657 : f32 = x_27.x_UserLut_Params.z;
    let x_659 : f32 = u_xlat18;
    u_xlat18 = ((x_655 * x_657) + -(x_659));
    let x_662 : vec4<f32> = u_xlat3;
    let x_665 : vec4<f32> = u_xlat2;
    let x_667 : vec3<f32> = (-(vec3<f32>(x_662.x, x_662.y, x_662.z)) + vec3<f32>(x_665.x, x_665.y, x_665.z));
    let x_668 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
    let x_670 : f32 = u_xlat18;
    let x_672 : vec4<f32> = u_xlat2;
    let x_675 : vec4<f32> = u_xlat3;
    let x_677 : vec3<f32> = ((vec3<f32>(x_670, x_670, x_670) * vec3<f32>(x_672.x, x_672.y, x_672.z)) + vec3<f32>(x_675.x, x_675.y, x_675.z));
    let x_678 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
    let x_680 : vec4<f32> = u_xlat1;
    let x_683 : vec4<f32> = u_xlat2;
    let x_685 : vec3<f32> = (-(vec3<f32>(x_680.x, x_680.y, x_680.z)) + vec3<f32>(x_683.x, x_683.y, x_683.z));
    let x_686 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
    let x_689 : vec4<f32> = x_27.x_UserLut_Params;
    let x_691 : vec4<f32> = u_xlat2;
    let x_694 : vec4<f32> = u_xlat1;
    let x_696 : vec3<f32> = ((vec3<f32>(x_689.w, x_689.w, x_689.w) * vec3<f32>(x_691.x, x_691.y, x_691.z)) + vec3<f32>(x_694.x, x_694.y, x_694.z));
    let x_697 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
    let x_699 : vec4<f32> = u_xlat1;
    let x_703 : vec3<f32> = (vec3<f32>(x_699.x, x_699.y, x_699.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_704 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
    let x_706 : vec4<f32> = u_xlat1;
    let x_710 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_711 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
    let x_713 : vec4<f32> = u_xlat3;
    let x_717 : vec3<f32> = (vec3<f32>(x_713.x, x_713.y, x_713.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_718 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
    let x_720 : vec4<f32> = u_xlat3;
    let x_723 : vec3<f32> = log2(abs(vec3<f32>(x_720.x, x_720.y, x_720.z)));
    let x_724 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
    let x_726 : vec4<f32> = u_xlat3;
    let x_730 : vec3<f32> = (vec3<f32>(x_726.x, x_726.y, x_726.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_731 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
    let x_733 : vec4<f32> = u_xlat3;
    let x_735 : vec3<f32> = exp2(vec3<f32>(x_733.x, x_733.y, x_733.z));
    let x_736 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
    let x_741 : vec4<f32> = u_xlat1;
    let x_743 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_741.x, x_741.y, x_741.z, x_741.x));
    u_xlatb1 = vec3<bool>(x_743.x, x_743.y, x_743.z);
    let x_746 : bool = u_xlatb1.x;
    if (x_746) {
      let x_751 : f32 = u_xlat2.x;
      x_747 = x_751;
    } else {
      let x_754 : f32 = u_xlat3.x;
      x_747 = x_754;
    }
    let x_755 : f32 = x_747;
    u_xlat0.x = x_755;
    let x_758 : bool = u_xlatb1.y;
    if (x_758) {
      let x_763 : f32 = u_xlat2.y;
      x_759 = x_763;
    } else {
      let x_766 : f32 = u_xlat3.y;
      x_759 = x_766;
    }
    let x_767 : f32 = x_759;
    u_xlat0.y = x_767;
    let x_770 : bool = u_xlatb1.z;
    if (x_770) {
      let x_775 : f32 = u_xlat2.z;
      x_771 = x_775;
    } else {
      let x_778 : f32 = u_xlat3.z;
      x_771 = x_778;
    }
    let x_779 : f32 = x_771;
    u_xlat0.z = x_779;
  }
  let x_781 : vec2<f32> = vs_TEXCOORD0;
  let x_784 : vec4<f32> = x_27.x_Grain_TilingParams;
  let x_788 : vec4<f32> = x_27.x_Grain_TilingParams;
  let x_790 : vec2<f32> = ((x_781 * vec2<f32>(x_784.x, x_784.y)) + vec2<f32>(x_788.z, x_788.w));
  let x_791 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
  let x_798 : vec4<f32> = u_xlat1;
  let x_801 : f32 = x_27.x_GlobalMipBias.x;
  let x_802 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_798.x, x_798.y), x_801);
  u_xlat18 = x_802.w;
  let x_804 : f32 = u_xlat18;
  u_xlat18 = (x_804 + -0.5f);
  let x_806 : f32 = u_xlat18;
  let x_807 : f32 = u_xlat18;
  u_xlat18 = (x_806 + x_807);
  let x_809 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_809, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_817 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_817);
  let x_822 : f32 = x_27.x_Grain_Params.y;
  let x_824 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_822 * -(x_824)) + 1.0f);
  let x_830 : f32 = u_xlat18;
  let x_832 : vec3<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_830, x_830, x_830) * x_832);
  let x_834 : vec3<f32> = u_xlat7;
  let x_837 : vec2<f32> = x_27.x_Grain_Params;
  u_xlat7 = (x_834 * vec3<f32>(x_837.x, x_837.x, x_837.x));
  let x_842 : vec3<f32> = u_xlat7;
  let x_843 : vec4<f32> = u_xlat1;
  let x_846 : vec3<f32> = u_xlat0;
  let x_847 : vec3<f32> = ((x_842 * vec3<f32>(x_843.x, x_843.x, x_843.x)) + x_846);
  let x_848 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
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

