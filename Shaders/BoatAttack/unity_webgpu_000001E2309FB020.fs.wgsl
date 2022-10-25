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

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearClamp : sampler;

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
  var u_xlatb16 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlatb1 : bool;
  var u_xlatb5 : bool;
  var x_479 : f32;
  var x_488 : f32;
  var u_xlatb10 : vec2<bool>;
  var u_xlat11 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlatb8 : bool;
  var x_628 : f32;
  var x_678 : f32;
  var x_705 : f32;
  var x_729 : f32;
  var x_740 : f32;
  var u_xlatb0 : vec3<bool>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1166 : f32;
  var x_1178 : f32;
  var x_1190 : f32;
  var u_xlat4 : vec2<f32>;
  var x_1343 : f32;
  var x_1355 : f32;
  var x_1367 : f32;
  var x_1615 : f32;
  var x_1627 : f32;
  var x_1639 : f32;
  var x_1696 : f32;
  var x_1708 : f32;
  var x_1720 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_13.x, x_13.y, x_13.x, x_13.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_22 : vec4<f32> = u_xlat0;
  let x_24 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_22.z, x_22.w), vec2<f32>(x_24.z, x_24.w));
  let x_31 : vec4<f32> = u_xlat0;
  let x_32 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_31 * vec4<f32>(x_32.x, x_32.x, x_32.x, x_32.x));
  let x_35 : vec4<f32> = u_xlat0;
  let x_43 : f32 = x_38.x_Chroma_Params;
  u_xlat0 = (x_35 * vec4<f32>(x_43, x_43, x_43, x_43));
  let x_56 : vec2<f32> = vs_TEXCOORD0;
  let x_59 : f32 = x_38.x_GlobalMipBias.x;
  let x_60 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_56, x_59);
  u_xlat1.x = x_60.x;
  let x_63 : vec4<f32> = u_xlat0;
  let x_68 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_63 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_68.x, x_68.y, x_68.x, x_68.y));
  let x_74 : vec4<f32> = u_xlat0;
  let x_77 : f32 = x_38.x_GlobalMipBias.x;
  let x_78 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_74.x, x_74.y), x_77);
  u_xlat1.y = x_78.y;
  let x_85 : vec4<f32> = u_xlat0;
  let x_88 : f32 = x_38.x_GlobalMipBias.x;
  let x_89 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_85.z, x_85.w), x_88);
  u_xlat1.z = x_89.z;
  let x_97 : vec2<f32> = vs_TEXCOORD0;
  let x_99 : f32 = x_38.x_GlobalMipBias.x;
  let x_100 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, x_97, x_99);
  u_xlat0 = x_100;
  let x_107 : f32 = x_38.x_Bloom_RGBM;
  u_xlatb16 = (0.0f < x_107);
  let x_109 : bool = u_xlatb16;
  if (x_109) {
    let x_114 : vec4<f32> = u_xlat0;
    let x_116 : vec4<f32> = u_xlat0;
    let x_118 : vec3<f32> = (vec3<f32>(x_114.w, x_114.w, x_114.w) * vec3<f32>(x_116.x, x_116.y, x_116.z));
    let x_119 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
    let x_121 : vec4<f32> = u_xlat2;
    let x_125 : vec3<f32> = (vec3<f32>(x_121.x, x_121.y, x_121.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_126 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  }
  let x_128 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = x_38.x_Bloom_Params;
  let x_135 : vec3<f32> = (vec3<f32>(x_128.x, x_128.y, x_128.z) * vec3<f32>(x_133.x, x_133.x, x_133.x));
  let x_136 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_138 : vec4<f32> = u_xlat0;
  let x_141 : vec4<f32> = x_38.x_Bloom_Params;
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec3<f32> = ((vec3<f32>(x_138.x, x_138.y, x_138.z) * vec3<f32>(x_141.y, x_141.z, x_141.w)) + vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_149 : vec2<f32> = vs_TEXCOORD0;
  let x_152 : vec4<f32> = x_38.x_LensDirt_Params;
  let x_156 : vec4<f32> = x_38.x_LensDirt_Params;
  let x_158 : vec2<f32> = ((x_149 * vec2<f32>(x_152.x, x_152.y)) + vec2<f32>(x_156.z, x_156.w));
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_158.x, x_158.y, x_159.z, x_159.w);
  let x_165 : vec4<f32> = u_xlat2;
  let x_168 : f32 = x_38.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_165.x, x_165.y), x_168);
  let x_170 : vec3<f32> = vec3<f32>(x_169.x, x_169.y, x_169.z);
  let x_171 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_173 : vec4<f32> = u_xlat2;
  let x_177 : f32 = x_38.x_LensDirt_Intensity;
  let x_179 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) * vec3<f32>(x_177, x_177, x_177));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_182 : vec4<f32> = u_xlat2;
  let x_184 : vec4<f32> = u_xlat0;
  let x_187 : vec4<f32> = u_xlat1;
  let x_189 : vec3<f32> = ((vec3<f32>(x_182.x, x_182.y, x_182.z) * vec3<f32>(x_184.x, x_184.y, x_184.z)) + vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_195 : f32 = x_38.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_195);
  let x_197 : bool = u_xlatb15;
  if (x_197) {
    let x_200 : vec2<f32> = vs_TEXCOORD0;
    let x_202 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_205 : vec2<f32> = (x_200 + -(vec2<f32>(x_202.x, x_202.y)));
    let x_206 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_205.x, x_205.y, x_206.z, x_206.w);
    let x_208 : vec4<f32> = u_xlat1;
    let x_212 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_214 : vec2<f32> = (abs(vec2<f32>(x_208.x, x_208.y)) * vec2<f32>(x_212.z, x_212.z));
    let x_215 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_215.x, x_214.x, x_214.y, x_215.w);
    let x_218 : f32 = u_xlat1.y;
    let x_222 : f32 = x_38.x_Vignette_Params1.w;
    u_xlat1.x = (x_218 * x_222);
    let x_226 : vec4<f32> = u_xlat1;
    let x_228 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_226.x, x_226.z), vec2<f32>(x_228.x, x_228.z));
    let x_231 : f32 = u_xlat15;
    u_xlat15 = (-(x_231) + 1.0f);
    let x_235 : f32 = u_xlat15;
    u_xlat15 = max(x_235, 0.0f);
    let x_237 : f32 = u_xlat15;
    u_xlat15 = log2(x_237);
    let x_239 : f32 = u_xlat15;
    let x_241 : f32 = x_38.x_Vignette_Params2.w;
    u_xlat15 = (x_239 * x_241);
    let x_243 : f32 = u_xlat15;
    u_xlat15 = exp2(x_243);
    let x_246 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_250 : vec3<f32> = (-(vec3<f32>(x_246.x, x_246.y, x_246.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_251 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
    let x_253 : f32 = u_xlat15;
    let x_255 : vec4<f32> = u_xlat1;
    let x_259 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_261 : vec3<f32> = ((vec3<f32>(x_253, x_253, x_253) * vec3<f32>(x_255.x, x_255.y, x_255.z)) + vec3<f32>(x_259.x, x_259.y, x_259.z));
    let x_262 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
    let x_264 : vec4<f32> = u_xlat0;
    let x_266 : vec4<f32> = u_xlat1;
    let x_268 : vec3<f32> = (vec3<f32>(x_264.x, x_264.y, x_264.z) * vec3<f32>(x_266.x, x_266.y, x_266.z));
    let x_269 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  }
  let x_271 : vec4<f32> = u_xlat0;
  let x_275 : vec4<f32> = x_38.x_Lut_Params;
  let x_277 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(x_275.w, x_275.w, x_275.w));
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_286 : vec4<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.439700991f, 0.382977992f, 0.177334994f), vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_294 : vec4<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.089792296f, 0.813422978f, 0.096761599f), vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_302 : vec4<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.017543999f, 0.111543998f, 0.870703995f), vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_307 : f32 = u_xlat6.y;
  let x_309 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_307, x_309);
  let x_313 : f32 = u_xlat6.z;
  let x_315 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_313, x_315);
  let x_320 : f32 = u_xlat6.y;
  let x_322 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_320, x_322);
  let x_326 : f32 = u_xlat6.z;
  let x_328 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_326, x_328);
  let x_331 : vec4<f32> = u_xlat0;
  let x_336 : vec3<f32> = max(vec3<f32>(x_331.x, x_331.y, x_331.y), vec3<f32>(0.0001f, 0.0001f, 0.01f));
  let x_337 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_340 : f32 = u_xlat0.x;
  let x_343 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_340) + x_343);
  let x_347 : f32 = u_xlat0.x;
  let x_349 : f32 = u_xlat0.z;
  u_xlat0.x = (x_347 / x_349);
  let x_352 : vec3<f32> = u_xlat6;
  let x_355 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_352.y, x_352.x, x_352.z)) + vec3<f32>(x_355.z, x_355.y, x_355.x));
  let x_358 : vec3<f32> = u_xlat5;
  let x_360 : vec3<f32> = u_xlat6;
  let x_362 : vec2<f32> = (vec2<f32>(x_358.x, x_358.y) * vec2<f32>(x_360.z, x_360.y));
  let x_363 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_362.x, x_362.y, x_363.z);
  let x_366 : f32 = u_xlat5.y;
  let x_368 : f32 = u_xlat5.x;
  u_xlat5.x = (x_366 + x_368);
  let x_372 : f32 = u_xlat6.x;
  let x_374 : f32 = u_xlat5.z;
  let x_377 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_372 * x_374) + x_377);
  let x_381 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_381, 0.0f);
  let x_385 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_385);
  let x_391 : f32 = u_xlat6.y;
  let x_393 : f32 = u_xlat6.z;
  u_xlat10.x = (x_391 + x_393);
  let x_397 : f32 = u_xlat6.x;
  let x_399 : f32 = u_xlat10.x;
  u_xlat10.x = (x_397 + x_399);
  let x_403 : f32 = u_xlat5.x;
  let x_407 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_403 * 1.75f) + x_407);
  let x_411 : f32 = u_xlat0.x;
  u_xlat15 = (x_411 + -0.400000006f);
  let x_414 : f32 = u_xlat15;
  u_xlat1.x = (x_414 * 2.5f);
  let x_419 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_419)) + 1.0f);
  let x_425 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_425, 0.0f);
  let x_428 : f32 = u_xlat15;
  u_xlatb15 = (x_428 >= 0.0f);
  let x_430 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_430);
  let x_433 : f32 = u_xlat1.x;
  let x_436 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_433) * x_436) + 1.0f);
  let x_440 : f32 = u_xlat15;
  let x_442 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_440 * x_442) + 1.0f);
  let x_446 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_446.x, x_446.z) * vec2<f32>(0.333333343f, 0.025f));
  let x_455 : f32 = u_xlat5.x;
  u_xlatb1 = (0.159999996f >= x_455);
  let x_459 : f32 = u_xlat5.x;
  u_xlatb5 = (x_459 >= 0.479999989f);
  let x_464 : f32 = u_xlat10.x;
  u_xlat10.x = (0.079999998f / x_464);
  let x_468 : f32 = u_xlat10.x;
  u_xlat10.x = (x_468 + -0.5f);
  let x_473 : f32 = u_xlat10.x;
  let x_475 : f32 = u_xlat10.y;
  u_xlat10.x = (x_473 * x_475);
  let x_478 : bool = u_xlatb5;
  if (x_478) {
    x_479 = 0.0f;
  } else {
    let x_484 : f32 = u_xlat10.x;
    x_479 = x_484;
  }
  let x_485 : f32 = x_479;
  u_xlat5.x = x_485;
  let x_487 : bool = u_xlatb1;
  if (x_487) {
    let x_492 : f32 = u_xlat10.y;
    x_488 = x_492;
  } else {
    let x_495 : f32 = u_xlat5.x;
    x_488 = x_495;
  }
  let x_496 : f32 = x_488;
  u_xlat5.x = x_496;
  let x_499 : f32 = u_xlat5.x;
  u_xlat5.x = (x_499 + 1.0f);
  let x_502 : vec3<f32> = u_xlat5;
  let x_504 : vec3<f32> = u_xlat6;
  let x_505 : vec3<f32> = (vec3<f32>(x_502.x, x_502.x, x_502.x) * x_504);
  let x_506 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_506.x, x_505.x, x_505.y, x_505.z);
  let x_511 : vec4<f32> = u_xlat2;
  let x_513 : vec4<f32> = u_xlat2;
  let x_516 : vec4<bool> = (vec4<f32>(x_511.z, x_511.w, x_511.z, x_511.w) == vec4<f32>(x_513.y, x_513.z, x_513.y, x_513.z));
  u_xlatb10 = vec2<bool>(x_516.x, x_516.y);
  let x_519 : bool = u_xlatb10.y;
  let x_521 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_519 & x_521);
  let x_525 : f32 = u_xlat6.y;
  let x_527 : f32 = u_xlat5.x;
  let x_530 : f32 = u_xlat2.w;
  u_xlat15 = ((x_525 * x_527) + -(x_530));
  let x_533 : f32 = u_xlat15;
  u_xlat15 = (x_533 * 1.732050776f);
  let x_537 : f32 = u_xlat2.y;
  let x_540 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_537 * 2.0f) + -(x_540));
  let x_545 : f32 = u_xlat6.z;
  let x_548 : f32 = u_xlat5.x;
  let x_551 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_545) * x_548) + x_551);
  let x_555 : f32 = u_xlat15;
  let x_558 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_555), abs(x_558));
  let x_563 : f32 = u_xlat15;
  let x_566 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_563), abs(x_566));
  let x_569 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_569);
  let x_571 : f32 = u_xlat16;
  let x_573 : f32 = u_xlat11.x;
  u_xlat11.x = (x_571 * x_573);
  let x_577 : f32 = u_xlat11.x;
  let x_579 : f32 = u_xlat11.x;
  u_xlat16 = (x_577 * x_579);
  let x_582 : f32 = u_xlat16;
  u_xlat3.x = ((x_582 * 0.0208351f) + -0.085133001f);
  let x_588 : f32 = u_xlat16;
  let x_590 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_588 * x_590) + 0.180141002f);
  let x_595 : f32 = u_xlat16;
  let x_597 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_595 * x_597) + -0.330299497f);
  let x_602 : f32 = u_xlat16;
  let x_604 : f32 = u_xlat3.x;
  u_xlat16 = ((x_602 * x_604) + 0.999866009f);
  let x_608 : f32 = u_xlat16;
  let x_610 : f32 = u_xlat11.x;
  u_xlat3.x = (x_608 * x_610);
  let x_615 : f32 = u_xlat1.x;
  let x_617 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_615) < abs(x_617));
  let x_621 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_621 * -2.0f) + 1.570796371f);
  let x_627 : bool = u_xlatb8;
  if (x_627) {
    let x_632 : f32 = u_xlat3.x;
    x_628 = x_632;
  } else {
    x_628 = 0.0f;
  }
  let x_634 : f32 = x_628;
  u_xlat3.x = x_634;
  let x_637 : f32 = u_xlat11.x;
  let x_638 : f32 = u_xlat16;
  let x_641 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_637 * x_638) + x_641);
  let x_645 : f32 = u_xlat1.x;
  let x_647 : f32 = u_xlat1.x;
  u_xlatb16 = (x_645 < -(x_647));
  let x_650 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.141592741f, x_650);
  let x_653 : f32 = u_xlat16;
  let x_655 : f32 = u_xlat11.x;
  u_xlat11.x = (x_653 + x_655);
  let x_658 : f32 = u_xlat15;
  let x_660 : f32 = u_xlat1.x;
  u_xlat16 = min(x_658, x_660);
  let x_662 : f32 = u_xlat15;
  let x_664 : f32 = u_xlat1.x;
  u_xlat15 = max(x_662, x_664);
  let x_666 : f32 = u_xlat16;
  let x_667 : f32 = u_xlat16;
  u_xlatb1 = (x_666 < -(x_667));
  let x_670 : f32 = u_xlat15;
  let x_671 : f32 = u_xlat15;
  u_xlatb15 = (x_670 >= -(x_671));
  let x_674 : bool = u_xlatb15;
  let x_675 : bool = u_xlatb1;
  u_xlatb15 = (x_674 & x_675);
  let x_677 : bool = u_xlatb15;
  if (x_677) {
    let x_682 : f32 = u_xlat11.x;
    x_678 = -(x_682);
  } else {
    let x_686 : f32 = u_xlat11.x;
    x_678 = x_686;
  }
  let x_687 : f32 = x_678;
  u_xlat15 = x_687;
  let x_688 : f32 = u_xlat15;
  u_xlat15 = (x_688 * 57.295780182f);
  let x_692 : bool = u_xlatb10.x;
  let x_693 : f32 = u_xlat15;
  u_xlat10.x = select(x_693, 0.0f, x_692);
  let x_697 : f32 = u_xlat10.x;
  u_xlatb15 = (x_697 < 0.0f);
  let x_700 : f32 = u_xlat10.x;
  u_xlat1.x = (x_700 + 360.0f);
  let x_704 : bool = u_xlatb15;
  if (x_704) {
    let x_709 : f32 = u_xlat1.x;
    x_705 = x_709;
  } else {
    let x_712 : f32 = u_xlat10.x;
    x_705 = x_712;
  }
  let x_713 : f32 = x_705;
  u_xlat10.x = x_713;
  let x_716 : f32 = u_xlat10.x;
  u_xlatb15 = (x_716 < -180.0f);
  let x_721 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_721);
  let x_723 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_723.x, x_723.x) + vec2<f32>(360.0f, -360.0f));
  let x_728 : bool = u_xlatb1;
  if (x_728) {
    let x_733 : f32 = u_xlat11.y;
    x_729 = x_733;
  } else {
    let x_736 : f32 = u_xlat10.x;
    x_729 = x_736;
  }
  let x_737 : f32 = x_729;
  u_xlat10.x = x_737;
  let x_739 : bool = u_xlatb15;
  if (x_739) {
    let x_744 : f32 = u_xlat11.x;
    x_740 = x_744;
  } else {
    let x_747 : f32 = u_xlat10.x;
    x_740 = x_747;
  }
  let x_748 : f32 = x_740;
  u_xlat10.x = x_748;
  let x_751 : f32 = u_xlat10.x;
  u_xlat10.x = (x_751 * 0.014814815f);
  let x_756 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_756)) + 1.0f);
  let x_762 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_762, 0.0f);
  let x_766 : f32 = u_xlat10.x;
  u_xlat15 = ((x_766 * -2.0f) + 3.0f);
  let x_771 : f32 = u_xlat10.x;
  let x_773 : f32 = u_xlat10.x;
  u_xlat10.x = (x_771 * x_773);
  let x_777 : f32 = u_xlat10.x;
  let x_778 : f32 = u_xlat15;
  u_xlat10.x = (x_777 * x_778);
  let x_782 : f32 = u_xlat10.x;
  let x_784 : f32 = u_xlat10.x;
  u_xlat10.x = (x_782 * x_784);
  let x_788 : f32 = u_xlat0.x;
  let x_790 : f32 = u_xlat10.x;
  u_xlat0.x = (x_788 * x_790);
  let x_794 : f32 = u_xlat6.x;
  let x_797 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_794) * x_797) + 0.029999999f);
  let x_803 : f32 = u_xlat5.x;
  let x_805 : f32 = u_xlat0.x;
  u_xlat0.x = (x_803 * x_805);
  let x_809 : f32 = u_xlat0.x;
  let x_813 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_809 * 0.180000007f) + x_813);
  let x_820 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.451439261f, -0.236510754f, -0.214928567f), vec3<f32>(x_820.x, x_820.z, x_820.w));
  let x_828 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.076553777f, 1.176229715f, -0.099675924f), vec3<f32>(x_828.x, x_828.z, x_828.w));
  let x_836 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.008316148f, -0.00603244966f, 0.997716308f), vec3<f32>(x_836.x, x_836.z, x_836.w));
  let x_840 : vec4<f32> = u_xlat0;
  let x_843 : vec3<f32> = max(vec3<f32>(x_840.x, x_840.y, x_840.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_844 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_846.x, x_846.y, x_846.z), vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_853 : f32 = u_xlat15;
  let x_856 : vec4<f32> = u_xlat0;
  let x_858 : vec3<f32> = (-(vec3<f32>(x_853, x_853, x_853)) + vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat0;
  let x_866 : f32 = u_xlat15;
  let x_868 : vec3<f32> = ((vec3<f32>(x_861.x, x_861.y, x_861.z) * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f)) + vec3<f32>(x_866, x_866, x_866));
  let x_869 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_871 : vec4<f32> = u_xlat0;
  let x_875 : vec3<f32> = (vec3<f32>(x_871.x, x_871.y, x_871.z) + vec3<f32>(0.024578599f, 0.024578599f, 0.024578599f));
  let x_876 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec4<f32> = u_xlat0;
  let x_880 : vec4<f32> = u_xlat1;
  let x_885 : vec3<f32> = ((vec3<f32>(x_878.x, x_878.y, x_878.z) * vec3<f32>(x_880.x, x_880.y, x_880.z)) + vec3<f32>(-0.000090537f, -0.000090537f, -0.000090537f));
  let x_886 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_888 : vec4<f32> = u_xlat0;
  let x_895 : vec3<f32> = ((vec3<f32>(x_888.x, x_888.y, x_888.z) * vec3<f32>(0.983729005f, 0.983729005f, 0.983729005f)) + vec3<f32>(0.432951003f, 0.432951003f, 0.432951003f));
  let x_896 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_898 : vec4<f32> = u_xlat0;
  let x_900 : vec4<f32> = u_xlat2;
  let x_905 : vec3<f32> = ((vec3<f32>(x_898.x, x_898.y, x_898.z) * vec3<f32>(x_900.x, x_900.y, x_900.z)) + vec3<f32>(0.238080993f, 0.238080993f, 0.238080993f));
  let x_906 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_908 : vec4<f32> = u_xlat1;
  let x_910 : vec4<f32> = u_xlat0;
  let x_912 : vec3<f32> = (vec3<f32>(x_908.x, x_908.y, x_908.z) / vec3<f32>(x_910.x, x_910.y, x_910.z));
  let x_913 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
  let x_919 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_927 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_935 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), vec3<f32>(x_935.x, x_935.y, x_935.z));
  let x_939 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_939.x, x_939.y, x_939.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_944 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_944, 0.0001f);
  let x_947 : vec4<f32> = u_xlat1;
  let x_949 : vec4<f32> = u_xlat0;
  let x_951 : vec2<f32> = (vec2<f32>(x_947.x, x_947.y) / vec2<f32>(x_949.x, x_949.x));
  let x_952 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
  let x_955 : f32 = u_xlat1.y;
  u_xlat15 = max(x_955, 0.0f);
  let x_957 : f32 = u_xlat15;
  u_xlat15 = min(x_957, 65504.0f);
  let x_960 : f32 = u_xlat15;
  u_xlat15 = log2(x_960);
  let x_962 : f32 = u_xlat15;
  u_xlat15 = (x_962 * 0.981100023f);
  let x_965 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_965);
  let x_969 : f32 = u_xlat0.y;
  u_xlat15 = max(x_969, 0.0001f);
  let x_972 : f32 = u_xlat1.y;
  let x_973 : f32 = u_xlat15;
  u_xlat15 = (x_972 / x_973);
  let x_976 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_976) + 1.0f);
  let x_980 : f32 = u_xlat0.y;
  let x_982 : f32 = u_xlat16;
  u_xlat0.z = (-(x_980) + x_982);
  let x_985 : f32 = u_xlat15;
  let x_987 : vec4<f32> = u_xlat0;
  let x_989 : vec2<f32> = (vec2<f32>(x_985, x_985) * vec2<f32>(x_987.x, x_987.z));
  let x_990 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_989.x, x_990.y, x_989.y, x_990.w);
  let x_996 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.641023397f, -0.324803293f, -0.236424699f), vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_1004 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.663662851f, 1.61533165f, 0.016756348f), vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1012 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.011721894f, -0.008284442f, 0.988394856f), vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1016 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_1016.x, x_1016.y, x_1016.z), vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_1019 : f32 = u_xlat15;
  let x_1022 : vec4<f32> = u_xlat0;
  let x_1024 : vec3<f32> = (-(vec3<f32>(x_1019, x_1019, x_1019)) + vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1025 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
  let x_1027 : vec4<f32> = u_xlat0;
  let x_1032 : f32 = u_xlat15;
  let x_1034 : vec3<f32> = ((vec3<f32>(x_1027.x, x_1027.y, x_1027.z) * vec3<f32>(0.930000007f, 0.930000007f, 0.930000007f)) + vec3<f32>(x_1032, x_1032, x_1032));
  let x_1035 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1037 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
  let x_1041 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1045 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1053 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.987223983f, -0.00611327f, 0.015953301f), vec3<f32>(x_1053.x, x_1053.y, x_1053.z));
  let x_1061 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836f, 1.001860023f, 0.0053302f), vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
  let x_1069 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.00307257f, -0.00509595f, 1.081680059f), vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1077 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.240969896f, -1.537383199f, -0.498610765f), vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
  let x_1082 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1082, 0.0f, 1.0f);
  let x_1089 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.969243646f, 1.875967503f, 0.041555058f), vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
  let x_1094 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1094, 0.0f, 1.0f);
  let x_1101 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008f, -0.203976959f, 1.05697155f), vec3<f32>(x_1101.x, x_1101.y, x_1101.z));
  let x_1106 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1106, 0.0f, 1.0f);
  let x_1114 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1114);
  let x_1118 : bool = u_xlatb0.x;
  if (x_1118) {
    let x_1121 : vec4<f32> = u_xlat1;
    let x_1125 : vec3<f32> = (vec3<f32>(x_1121.x, x_1121.y, x_1121.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_1126 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
    let x_1128 : vec4<f32> = u_xlat1;
    let x_1130 : vec3<f32> = log2(vec3<f32>(x_1128.x, x_1128.y, x_1128.z));
    let x_1131 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
    let x_1133 : vec4<f32> = u_xlat2;
    let x_1137 : vec3<f32> = (vec3<f32>(x_1133.x, x_1133.y, x_1133.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_1138 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
    let x_1140 : vec4<f32> = u_xlat2;
    let x_1142 : vec3<f32> = exp2(vec3<f32>(x_1140.x, x_1140.y, x_1140.z));
    let x_1143 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
    let x_1145 : vec4<f32> = u_xlat2;
    let x_1152 : vec3<f32> = ((vec3<f32>(x_1145.x, x_1145.y, x_1145.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_1153 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
    let x_1158 : vec4<f32> = u_xlat1;
    let x_1160 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1158.x));
    u_xlatb3 = vec3<bool>(x_1160.x, x_1160.y, x_1160.z);
    let x_1163 : vec4<f32> = u_xlat0;
    hlslcc_movcTemp = x_1163;
    let x_1165 : bool = u_xlatb3.x;
    if (x_1165) {
      let x_1170 : f32 = u_xlat0.x;
      x_1166 = x_1170;
    } else {
      let x_1173 : f32 = u_xlat2.x;
      x_1166 = x_1173;
    }
    let x_1174 : f32 = x_1166;
    hlslcc_movcTemp.x = x_1174;
    let x_1177 : bool = u_xlatb3.y;
    if (x_1177) {
      let x_1182 : f32 = u_xlat0.y;
      x_1178 = x_1182;
    } else {
      let x_1185 : f32 = u_xlat2.y;
      x_1178 = x_1185;
    }
    let x_1186 : f32 = x_1178;
    hlslcc_movcTemp.y = x_1186;
    let x_1189 : bool = u_xlatb3.z;
    if (x_1189) {
      let x_1194 : f32 = u_xlat0.z;
      x_1190 = x_1194;
    } else {
      let x_1197 : f32 = u_xlat2.z;
      x_1190 = x_1197;
    }
    let x_1198 : f32 = x_1190;
    hlslcc_movcTemp.z = x_1198;
    let x_1200 : vec4<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1200;
    let x_1201 : vec4<f32> = u_xlat0;
    let x_1204 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1206 : vec3<f32> = (vec3<f32>(x_1201.z, x_1201.x, x_1201.y) * vec3<f32>(x_1204.z, x_1204.z, x_1204.z));
    let x_1207 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1207.w);
    let x_1210 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1210);
    let x_1213 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1217 : vec2<f32> = (vec2<f32>(x_1213.x, x_1213.y) * vec2<f32>(0.5f, 0.5f));
    let x_1218 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1217.x, x_1218.y, x_1218.z, x_1217.y);
    let x_1220 : vec4<f32> = u_xlat2;
    let x_1223 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1226 : vec4<f32> = u_xlat2;
    let x_1228 : vec2<f32> = ((vec2<f32>(x_1220.y, x_1220.z) * vec2<f32>(x_1223.x, x_1223.y)) + vec2<f32>(x_1226.x, x_1226.w));
    let x_1229 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1229.x, x_1228.x, x_1228.y, x_1229.w);
    let x_1231 : f32 = u_xlat15;
    let x_1233 : f32 = x_38.x_UserLut_Params.y;
    let x_1236 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1231 * x_1233) + x_1236);
    let x_1243 : vec4<f32> = u_xlat2;
    let x_1245 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1243.x, x_1243.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1245.x, x_1245.y, x_1245.z);
    let x_1249 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_1249;
    u_xlat4.y = 0.0f;
    let x_1252 : vec4<f32> = u_xlat2;
    let x_1254 : vec2<f32> = u_xlat4;
    let x_1255 : vec2<f32> = (vec2<f32>(x_1252.x, x_1252.z) + x_1254);
    let x_1256 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1255.x, x_1255.y, x_1256.z, x_1256.w);
    let x_1261 : vec4<f32> = u_xlat2;
    let x_1263 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1261.x, x_1261.y), 0.0f);
    let x_1264 : vec3<f32> = vec3<f32>(x_1263.x, x_1263.y, x_1263.z);
    let x_1265 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
    let x_1268 : f32 = u_xlat0.z;
    let x_1270 : f32 = x_38.x_UserLut_Params.z;
    let x_1272 : f32 = u_xlat15;
    u_xlat15 = ((x_1268 * x_1270) + -(x_1272));
    let x_1275 : vec3<f32> = u_xlat3;
    let x_1277 : vec4<f32> = u_xlat2;
    let x_1279 : vec3<f32> = (-(x_1275) + vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
    let x_1280 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
    let x_1282 : f32 = u_xlat15;
    let x_1284 : vec4<f32> = u_xlat2;
    let x_1287 : vec3<f32> = u_xlat3;
    let x_1288 : vec3<f32> = ((vec3<f32>(x_1282, x_1282, x_1282) * vec3<f32>(x_1284.x, x_1284.y, x_1284.z)) + x_1287);
    let x_1289 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
    let x_1291 : vec4<f32> = u_xlat0;
    let x_1294 : vec4<f32> = u_xlat2;
    let x_1296 : vec3<f32> = (-(vec3<f32>(x_1291.x, x_1291.y, x_1291.z)) + vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
    let x_1297 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
    let x_1300 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1302 : vec4<f32> = u_xlat2;
    let x_1305 : vec4<f32> = u_xlat0;
    let x_1307 : vec3<f32> = ((vec3<f32>(x_1300.w, x_1300.w, x_1300.w) * vec3<f32>(x_1302.x, x_1302.y, x_1302.z)) + vec3<f32>(x_1305.x, x_1305.y, x_1305.z));
    let x_1308 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1307.x, x_1307.y, x_1307.z, x_1308.w);
    let x_1310 : vec4<f32> = u_xlat0;
    let x_1314 : vec3<f32> = (vec3<f32>(x_1310.x, x_1310.y, x_1310.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1315 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
    let x_1317 : vec4<f32> = u_xlat0;
    u_xlat3 = (vec3<f32>(x_1317.x, x_1317.y, x_1317.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1322 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1322 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1326 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1326));
    let x_1329 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1329 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1333 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1333);
    let x_1337 : vec4<f32> = u_xlat0;
    let x_1339 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1337.x));
    u_xlatb0 = vec3<bool>(x_1339.x, x_1339.y, x_1339.z);
    let x_1342 : bool = u_xlatb0.x;
    if (x_1342) {
      let x_1347 : f32 = u_xlat2.x;
      x_1343 = x_1347;
    } else {
      let x_1350 : f32 = u_xlat3.x;
      x_1343 = x_1350;
    }
    let x_1351 : f32 = x_1343;
    u_xlat1.x = x_1351;
    let x_1354 : bool = u_xlatb0.y;
    if (x_1354) {
      let x_1359 : f32 = u_xlat2.y;
      x_1355 = x_1359;
    } else {
      let x_1362 : f32 = u_xlat3.y;
      x_1355 = x_1362;
    }
    let x_1363 : f32 = x_1355;
    u_xlat1.y = x_1363;
    let x_1366 : bool = u_xlatb0.z;
    if (x_1366) {
      let x_1371 : f32 = u_xlat2.z;
      x_1367 = x_1371;
    } else {
      let x_1374 : f32 = u_xlat3.z;
      x_1367 = x_1374;
    }
    let x_1375 : f32 = x_1367;
    u_xlat1.z = x_1375;
  }
  let x_1377 : vec4<f32> = u_xlat1;
  let x_1380 : vec4<f32> = x_38.x_Lut_Params;
  let x_1382 : vec3<f32> = (vec3<f32>(x_1377.z, x_1377.x, x_1377.y) * vec3<f32>(x_1380.z, x_1380.z, x_1380.z));
  let x_1383 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1382.x, x_1382.y, x_1382.z, x_1383.w);
  let x_1386 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1386);
  let x_1390 : vec4<f32> = x_38.x_Lut_Params;
  let x_1392 : vec2<f32> = (vec2<f32>(x_1390.x, x_1390.y) * vec2<f32>(0.5f, 0.5f));
  let x_1393 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1392.x, x_1392.y, x_1393.z, x_1393.w);
  let x_1395 : vec4<f32> = u_xlat0;
  let x_1398 : vec4<f32> = x_38.x_Lut_Params;
  let x_1401 : vec4<f32> = u_xlat1;
  let x_1403 : vec2<f32> = ((vec2<f32>(x_1395.y, x_1395.z) * vec2<f32>(x_1398.x, x_1398.y)) + vec2<f32>(x_1401.x, x_1401.y));
  let x_1404 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1404.x, x_1403.x, x_1403.y, x_1404.w);
  let x_1407 : f32 = u_xlat0.x;
  let x_1409 : f32 = x_38.x_Lut_Params.y;
  let x_1412 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1407 * x_1409) + x_1412);
  let x_1419 : vec4<f32> = u_xlat2;
  let x_1421 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1419.x, x_1419.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1421.x, x_1421.y, x_1421.z);
  let x_1424 : f32 = x_38.x_Lut_Params.y;
  u_xlat1.x = x_1424;
  u_xlat1.y = 0.0f;
  let x_1427 : vec4<f32> = u_xlat1;
  let x_1429 : vec4<f32> = u_xlat2;
  let x_1431 : vec2<f32> = (vec2<f32>(x_1427.x, x_1427.y) + vec2<f32>(x_1429.x, x_1429.z));
  let x_1432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1431.x, x_1431.y, x_1432.z, x_1432.w);
  let x_1437 : vec4<f32> = u_xlat1;
  let x_1439 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1437.x, x_1437.y), 0.0f);
  let x_1440 : vec3<f32> = vec3<f32>(x_1439.x, x_1439.y, x_1439.z);
  let x_1441 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1440.x, x_1440.y, x_1441.z, x_1440.z);
  let x_1444 : f32 = u_xlat1.z;
  let x_1446 : f32 = x_38.x_Lut_Params.z;
  let x_1449 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1444 * x_1446) + -(x_1449));
  let x_1453 : vec3<f32> = u_xlat5;
  let x_1455 : vec4<f32> = u_xlat1;
  let x_1457 : vec3<f32> = (-(x_1453) + vec3<f32>(x_1455.x, x_1455.y, x_1455.w));
  let x_1458 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
  let x_1460 : vec4<f32> = u_xlat0;
  let x_1462 : vec4<f32> = u_xlat1;
  let x_1465 : vec3<f32> = u_xlat5;
  let x_1466 : vec3<f32> = ((vec3<f32>(x_1460.x, x_1460.x, x_1460.x) * vec3<f32>(x_1462.x, x_1462.y, x_1462.z)) + x_1465);
  let x_1467 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1467.w);
  let x_1469 : vec2<f32> = vs_TEXCOORD0;
  let x_1472 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_1476 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_1478 : vec2<f32> = ((x_1469 * vec2<f32>(x_1472.x, x_1472.y)) + vec2<f32>(x_1476.z, x_1476.w));
  let x_1479 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1478.x, x_1478.y, x_1479.z, x_1479.w);
  let x_1486 : vec4<f32> = u_xlat1;
  let x_1489 : f32 = x_38.x_GlobalMipBias.x;
  let x_1490 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1486.x, x_1486.y), x_1489);
  u_xlat15 = x_1490.w;
  let x_1492 : f32 = u_xlat15;
  u_xlat15 = (x_1492 + -0.5f);
  let x_1494 : f32 = u_xlat15;
  let x_1495 : f32 = u_xlat15;
  u_xlat15 = (x_1494 + x_1495);
  let x_1497 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1497.x, x_1497.y, x_1497.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1506 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1506);
  let x_1511 : f32 = x_38.x_Grain_Params.y;
  let x_1513 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1511 * -(x_1513)) + 1.0f);
  let x_1518 : f32 = u_xlat15;
  let x_1520 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_1518, x_1518, x_1518) * vec3<f32>(x_1520.x, x_1520.y, x_1520.z));
  let x_1523 : vec3<f32> = u_xlat6;
  let x_1526 : vec2<f32> = x_38.x_Grain_Params;
  u_xlat6 = (x_1523 * vec3<f32>(x_1526.x, x_1526.x, x_1526.x));
  let x_1529 : vec3<f32> = u_xlat6;
  let x_1530 : vec4<f32> = u_xlat1;
  let x_1533 : vec4<f32> = u_xlat0;
  let x_1535 : vec3<f32> = ((x_1529 * vec3<f32>(x_1530.x, x_1530.x, x_1530.x)) + vec3<f32>(x_1533.x, x_1533.y, x_1533.z));
  let x_1536 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1535.x, x_1535.y, x_1535.z, x_1536.w);
  let x_1538 : vec2<f32> = vs_TEXCOORD0;
  let x_1541 : vec4<f32> = x_38.x_Dithering_Params;
  let x_1545 : vec4<f32> = x_38.x_Dithering_Params;
  let x_1547 : vec2<f32> = ((x_1538 * vec2<f32>(x_1541.x, x_1541.y)) + vec2<f32>(x_1545.z, x_1545.w));
  let x_1548 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1547.x, x_1547.y, x_1548.z, x_1548.w);
  let x_1555 : vec4<f32> = u_xlat1;
  let x_1558 : f32 = x_38.x_GlobalMipBias.x;
  let x_1559 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1555.x, x_1555.y), x_1558);
  u_xlat15 = x_1559.w;
  let x_1561 : f32 = u_xlat15;
  u_xlat15 = ((x_1561 * 2.0f) + -1.0f);
  let x_1564 : f32 = u_xlat15;
  u_xlatb1 = (x_1564 >= 0.0f);
  let x_1566 : bool = u_xlatb1;
  u_xlat1.x = select(-1.0f, 1.0f, x_1566);
  let x_1569 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_1569)) + 1.0f);
  let x_1573 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_1573);
  let x_1575 : f32 = u_xlat15;
  u_xlat15 = (-(x_1575) + 1.0f);
  let x_1578 : f32 = u_xlat15;
  let x_1580 : f32 = u_xlat1.x;
  u_xlat15 = (x_1578 * x_1580);
  let x_1582 : vec4<f32> = u_xlat0;
  let x_1584 : vec3<f32> = (vec3<f32>(x_1582.x, x_1582.y, x_1582.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1585 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
  let x_1587 : vec4<f32> = u_xlat0;
  let x_1590 : vec3<f32> = log2(abs(vec3<f32>(x_1587.x, x_1587.y, x_1587.z)));
  let x_1591 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1590.x, x_1590.y, x_1590.z, x_1591.w);
  let x_1593 : vec4<f32> = u_xlat2;
  let x_1595 : vec3<f32> = (vec3<f32>(x_1593.x, x_1593.y, x_1593.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1596 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1595.x, x_1595.y, x_1595.z, x_1596.w);
  let x_1598 : vec4<f32> = u_xlat2;
  let x_1600 : vec3<f32> = exp2(vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
  let x_1601 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
  let x_1603 : vec4<f32> = u_xlat2;
  let x_1606 : vec3<f32> = ((vec3<f32>(x_1603.x, x_1603.y, x_1603.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1607 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1606.x, x_1606.y, x_1606.z, x_1607.w);
  let x_1609 : vec4<f32> = u_xlat0;
  let x_1611 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1609.x, x_1609.y, x_1609.z, x_1609.x));
  u_xlatb0 = vec3<bool>(x_1611.x, x_1611.y, x_1611.z);
  let x_1614 : bool = u_xlatb0.x;
  if (x_1614) {
    let x_1619 : f32 = u_xlat1.x;
    x_1615 = x_1619;
  } else {
    let x_1622 : f32 = u_xlat2.x;
    x_1615 = x_1622;
  }
  let x_1623 : f32 = x_1615;
  u_xlat0.x = x_1623;
  let x_1626 : bool = u_xlatb0.y;
  if (x_1626) {
    let x_1631 : f32 = u_xlat1.y;
    x_1627 = x_1631;
  } else {
    let x_1634 : f32 = u_xlat2.y;
    x_1627 = x_1634;
  }
  let x_1635 : f32 = x_1627;
  u_xlat0.y = x_1635;
  let x_1638 : bool = u_xlatb0.z;
  if (x_1638) {
    let x_1643 : f32 = u_xlat1.z;
    x_1639 = x_1643;
  } else {
    let x_1646 : f32 = u_xlat2.z;
    x_1639 = x_1646;
  }
  let x_1647 : f32 = x_1639;
  u_xlat0.z = x_1647;
  let x_1649 : f32 = u_xlat15;
  let x_1654 : vec4<f32> = u_xlat0;
  let x_1656 : vec3<f32> = ((vec3<f32>(x_1649, x_1649, x_1649) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1654.x, x_1654.y, x_1654.z));
  let x_1657 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1657.w);
  let x_1659 : vec4<f32> = u_xlat0;
  let x_1661 : vec3<f32> = (vec3<f32>(x_1659.x, x_1659.y, x_1659.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1662 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1662.w);
  let x_1664 : vec4<f32> = u_xlat0;
  let x_1666 : vec3<f32> = (vec3<f32>(x_1664.x, x_1664.y, x_1664.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1667 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1666.x, x_1666.y, x_1666.z, x_1667.w);
  let x_1669 : vec4<f32> = u_xlat2;
  let x_1671 : vec3<f32> = (vec3<f32>(x_1669.x, x_1669.y, x_1669.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1672 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1671.x, x_1671.y, x_1671.z, x_1672.w);
  let x_1674 : vec4<f32> = u_xlat2;
  let x_1677 : vec3<f32> = log2(abs(vec3<f32>(x_1674.x, x_1674.y, x_1674.z)));
  let x_1678 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1678.w);
  let x_1680 : vec4<f32> = u_xlat2;
  let x_1682 : vec3<f32> = (vec3<f32>(x_1680.x, x_1680.y, x_1680.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1683 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1682.x, x_1682.y, x_1682.z, x_1683.w);
  let x_1685 : vec4<f32> = u_xlat2;
  let x_1687 : vec3<f32> = exp2(vec3<f32>(x_1685.x, x_1685.y, x_1685.z));
  let x_1688 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1687.x, x_1687.y, x_1687.z, x_1688.w);
  let x_1690 : vec4<f32> = u_xlat0;
  let x_1692 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1690.x));
  u_xlatb0 = vec3<bool>(x_1692.x, x_1692.y, x_1692.z);
  let x_1695 : bool = u_xlatb0.x;
  if (x_1695) {
    let x_1700 : f32 = u_xlat1.x;
    x_1696 = x_1700;
  } else {
    let x_1703 : f32 = u_xlat2.x;
    x_1696 = x_1703;
  }
  let x_1704 : f32 = x_1696;
  u_xlat0.x = x_1704;
  let x_1707 : bool = u_xlatb0.y;
  if (x_1707) {
    let x_1712 : f32 = u_xlat1.y;
    x_1708 = x_1712;
  } else {
    let x_1715 : f32 = u_xlat2.y;
    x_1708 = x_1715;
  }
  let x_1716 : f32 = x_1708;
  u_xlat0.y = x_1716;
  let x_1719 : bool = u_xlatb0.z;
  if (x_1719) {
    let x_1724 : f32 = u_xlat1.z;
    x_1720 = x_1724;
  } else {
    let x_1727 : f32 = u_xlat2.z;
    x_1720 = x_1727;
  }
  let x_1728 : f32 = x_1720;
  u_xlat0.z = x_1728;
  let x_1732 : vec4<f32> = u_xlat0;
  let x_1734 : vec3<f32> = max(vec3<f32>(x_1732.x, x_1732.y, x_1732.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1735 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1735.w);
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

