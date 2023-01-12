struct PGlobals {
  x_Lut2D_Params : vec4<f32>,
  x_ColorBalance : vec3<f32>,
  @size(4)
  padding : u32,
  x_ColorFilter : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_HueSatCon : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_ChannelMixerRed : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_ChannelMixerGreen : vec3<f32>,
  @size(4)
  padding_4 : u32,
  x_ChannelMixerBlue : vec3<f32>,
  @size(4)
  padding_5 : u32,
  x_Lift : vec3<f32>,
  @size(4)
  padding_6 : u32,
  x_InvGamma : vec3<f32>,
  @size(4)
  padding_7 : u32,
  x_Gain : vec3<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(0) var x_Curves : texture_2d<f32>;

@group(0) @binding(1) var sampler_Curves : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_193 : f32;
  var x_205 : f32;
  var x_217 : f32;
  var u_xlatb1 : vec4<bool>;
  var u_xlatb2 : vec2<bool>;
  var u_xlat5 : vec3<f32>;
  var x_282 : f32;
  var x_292 : f32;
  var u_xlat8 : f32;
  var x_310 : f32;
  var x_326 : f32;
  var x_338 : f32;
  var x_350 : f32;
  var u_xlatb12 : bool;
  var u_xlat12 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlatb4 : bool;
  var x_712 : f32;
  var x_726 : f32;
  var u_xlat10 : vec2<f32>;
  var x_1049 : f32;
  var x_1059 : f32;
  var u_xlat9 : f32;
  var u_xlatb13 : bool;
  var u_xlatb5 : bool;
  var x_1248 : f32;
  var x_1278 : f32;
  var x_1295 : f32;
  var x_1317 : f32;
  var x_1333 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_Lut2D_Params;
  let x_25 : vec2<f32> = (x_13 + -(vec2<f32>(x_22.y, x_22.z)));
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_25.x, x_25.y, x_26.w);
  let x_33 : f32 = u_xlat0.y;
  let x_37 : f32 = x_17.x_Lut2D_Params.x;
  u_xlat1.x = (x_33 * x_37);
  let x_41 : f32 = u_xlat1.x;
  u_xlat0.x = fract(x_41);
  let x_45 : f32 = u_xlat0.x;
  let x_47 : f32 = x_17.x_Lut2D_Params.x;
  u_xlat1.x = (x_45 / x_47);
  let x_51 : f32 = u_xlat0.y;
  let x_53 : f32 = u_xlat1.x;
  u_xlat0.w = (x_51 + -(x_53));
  let x_58 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_17.x_Lut2D_Params;
  let x_66 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.z, x_58.w) * vec3<f32>(x_61.w, x_61.w, x_61.w)) + vec3<f32>(-0.386036009f, -0.386036009f, -0.386036009f));
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_66.x, x_66.y, x_66.z, x_67.w);
  let x_69 : vec4<f32> = u_xlat0;
  let x_73 : vec3<f32> = (vec3<f32>(x_69.x, x_69.y, x_69.z) * vec3<f32>(13.605482101f, 13.605482101f, 13.605482101f));
  let x_74 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_73.x, x_73.y, x_73.z, x_74.w);
  let x_76 : vec4<f32> = u_xlat0;
  let x_78 : vec3<f32> = exp2(vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_79 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_81 : vec4<f32> = u_xlat0;
  let x_85 : vec3<f32> = (vec3<f32>(x_81.x, x_81.y, x_81.z) + vec3<f32>(-0.047995999f, -0.047995999f, -0.047995999f));
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat0;
  let x_92 : vec3<f32> = (vec3<f32>(x_88.x, x_88.y, x_88.z) * vec3<f32>(0.179999992f, 0.179999992f, 0.179999992f));
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_99 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.439700991f, 0.382977992f, 0.177334994f), vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.089792296f, 0.813422978f, 0.096761599f), vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.017543999f, 0.111543998f, 0.870703995f), vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_120 : vec4<f32> = u_xlat1;
  let x_124 : vec3<f32> = max(vec3<f32>(x_120.x, x_120.y, x_120.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_125 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_127 : vec4<f32> = u_xlat0;
  let x_131 : vec3<f32> = min(vec3<f32>(x_127.x, x_127.y, x_127.z), vec3<f32>(65504.0f, 65504.0f, 65504.0f));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat0;
  let x_141 : vec3<f32> = ((vec3<f32>(x_134.x, x_134.y, x_134.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(1.525878e-05f, 1.525878e-05f, 1.525878e-05f));
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec3<f32> = log2(vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_149 : vec4<f32> = u_xlat1;
  let x_153 : vec3<f32> = (vec3<f32>(x_149.x, x_149.y, x_149.z) + vec3<f32>(9.720000267f, 9.720000267f, 9.720000267f));
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_156 : vec4<f32> = u_xlat1;
  let x_160 : vec3<f32> = (vec3<f32>(x_156.x, x_156.y, x_156.z) * vec3<f32>(0.057077624f, 0.057077624f, 0.057077624f));
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec4<f32> = u_xlat0;
  let x_166 : vec3<f32> = log2(vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_173 : vec4<f32> = u_xlat0;
  let x_178 : vec4<bool> = (vec4<f32>(x_173.x, x_173.y, x_173.z, x_173.x) < vec4<f32>(3.05175708e-05f, 3.05175708e-05f, 3.05175708e-05f, 0.0f));
  u_xlatb0 = vec3<bool>(x_178.x, x_178.y, x_178.z);
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) + vec3<f32>(9.720000267f, 9.720000267f, 9.720000267f));
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat2;
  let x_187 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(0.057077624f, 0.057077624f, 0.057077624f));
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_192 : bool = u_xlatb0.x;
  if (x_192) {
    let x_197 : f32 = u_xlat1.x;
    x_193 = x_197;
  } else {
    let x_200 : f32 = u_xlat2.x;
    x_193 = x_200;
  }
  let x_201 : f32 = x_193;
  u_xlat0.x = x_201;
  let x_204 : bool = u_xlatb0.y;
  if (x_204) {
    let x_209 : f32 = u_xlat1.y;
    x_205 = x_209;
  } else {
    let x_212 : f32 = u_xlat2.y;
    x_205 = x_212;
  }
  let x_213 : f32 = x_205;
  u_xlat0.y = x_213;
  let x_216 : bool = u_xlatb0.z;
  if (x_216) {
    let x_221 : f32 = u_xlat1.z;
    x_217 = x_221;
  } else {
    let x_224 : f32 = u_xlat2.z;
    x_217 = x_224;
  }
  let x_225 : f32 = x_217;
  u_xlat0.z = x_225;
  let x_227 : vec4<f32> = u_xlat0;
  let x_231 : vec3<f32> = (vec3<f32>(x_227.x, x_227.y, x_227.z) + vec3<f32>(-0.413588405f, -0.413588405f, -0.413588405f));
  let x_232 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_234 : vec4<f32> = u_xlat0;
  let x_239 : vec3<f32> = x_17.x_HueSatCon;
  let x_244 : vec3<f32> = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_239.z, x_239.z, x_239.z)) + vec3<f32>(0.413588405f, 0.413588405f, 0.413588405f));
  let x_245 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_249 : vec4<f32> = u_xlat0;
  u_xlatb1 = (vec4<f32>(x_249.x, x_249.x, x_249.y, x_249.y) < vec4<f32>(-0.301369876f, 1.467996359f, -0.301369876f, 1.467996359f));
  let x_255 : vec4<f32> = u_xlat0;
  let x_262 : vec3<f32> = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(17.520000458f, 17.520000458f, 17.520000458f)) + vec3<f32>(-9.720000267f, -9.720000267f, -9.720000267f));
  let x_263 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_262.z);
  let x_268 : vec4<f32> = u_xlat0;
  let x_271 : vec4<bool> = (vec4<f32>(x_268.z, x_268.z, x_268.z, x_268.z) < vec4<f32>(-0.301369876f, 1.467996359f, 0.0f, 0.0f));
  u_xlatb2 = vec2<bool>(x_271.x, x_271.y);
  let x_273 : vec4<f32> = u_xlat0;
  let x_275 : vec3<f32> = exp2(vec3<f32>(x_273.x, x_273.y, x_273.w));
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_281 : bool = u_xlatb1.y;
  if (x_281) {
    let x_286 : f32 = u_xlat0.x;
    x_282 = x_286;
  } else {
    x_282 = 65504.0f;
  }
  let x_288 : f32 = x_282;
  u_xlat5.x = x_288;
  let x_291 : bool = u_xlatb1.w;
  if (x_291) {
    let x_296 : f32 = u_xlat0.y;
    x_292 = x_296;
  } else {
    x_292 = 65504.0f;
  }
  let x_298 : f32 = x_292;
  u_xlat5.z = x_298;
  let x_300 : vec4<f32> = u_xlat0;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) + vec3<f32>(-1.52587891e-05f, -1.52587891e-05f, -1.52587891e-05f));
  let x_305 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_304.x, x_304.y, x_305.z, x_304.z);
  let x_309 : bool = u_xlatb2.y;
  if (x_309) {
    let x_314 : f32 = u_xlat0.z;
    x_310 = x_314;
  } else {
    x_310 = 65504.0f;
  }
  let x_316 : f32 = x_310;
  u_xlat8 = x_316;
  let x_317 : vec4<f32> = u_xlat0;
  let x_319 : vec4<f32> = u_xlat0;
  let x_321 : vec3<f32> = (vec3<f32>(x_317.x, x_317.y, x_317.w) + vec3<f32>(x_319.x, x_319.y, x_319.w));
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_321.x, x_321.y, x_322.z, x_321.z);
  let x_325 : bool = u_xlatb1.x;
  if (x_325) {
    let x_330 : f32 = u_xlat0.x;
    x_326 = x_330;
  } else {
    let x_333 : f32 = u_xlat5.x;
    x_326 = x_333;
  }
  let x_334 : f32 = x_326;
  u_xlat1.x = x_334;
  let x_337 : bool = u_xlatb1.z;
  if (x_337) {
    let x_342 : f32 = u_xlat0.y;
    x_338 = x_342;
  } else {
    let x_345 : f32 = u_xlat5.z;
    x_338 = x_345;
  }
  let x_346 : f32 = x_338;
  u_xlat1.y = x_346;
  let x_349 : bool = u_xlatb2.x;
  if (x_349) {
    let x_354 : f32 = u_xlat0.w;
    x_350 = x_354;
  } else {
    let x_356 : f32 = u_xlat8;
    x_350 = x_356;
  }
  let x_357 : f32 = x_350;
  u_xlat1.z = x_357;
  let x_363 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.451439261f, -0.236510754f, -0.214928567f), vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_371 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.076553777f, 1.176229715f, -0.099675924f), vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_379 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.008316148f, -0.00603244966f, 0.997716308f), vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_387 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.390404999f, 0.549941003f, 0.00892632f), vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_395 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.070841603f, 0.963172019f, 0.00135775f), vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_403 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.023108199f, 0.128021002f, 0.936245024f), vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_407 : vec4<f32> = u_xlat1;
  let x_411 : vec3<f32> = x_17.x_ColorBalance;
  let x_412 : vec3<f32> = (vec3<f32>(x_407.x, x_407.y, x_407.z) * x_411);
  let x_413 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_419 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(2.858469963f, -1.628790021f, -0.024891f), vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_427 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.210181996f, 1.158200026f, 0.000324281f), vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_435 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.041811999f, -0.118169002f, 1.068670034f), vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_439 : vec4<f32> = u_xlat1;
  let x_443 : vec3<f32> = x_17.x_ColorFilter;
  let x_444 : vec3<f32> = (vec3<f32>(x_439.x, x_439.y, x_439.z) * x_443);
  let x_445 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat0;
  let x_451 : vec3<f32> = x_17.x_ChannelMixerRed;
  u_xlat1.x = dot(vec3<f32>(x_447.x, x_447.y, x_447.z), x_451);
  let x_454 : vec4<f32> = u_xlat0;
  let x_458 : vec3<f32> = x_17.x_ChannelMixerGreen;
  u_xlat1.y = dot(vec3<f32>(x_454.x, x_454.y, x_454.z), x_458);
  let x_461 : vec4<f32> = u_xlat0;
  let x_465 : vec3<f32> = x_17.x_ChannelMixerBlue;
  u_xlat1.z = dot(vec3<f32>(x_461.x, x_461.y, x_461.z), x_465);
  let x_468 : vec4<f32> = u_xlat1;
  let x_472 : vec3<f32> = x_17.x_Gain;
  let x_476 : vec3<f32> = x_17.x_Lift;
  let x_477 : vec3<f32> = ((vec3<f32>(x_468.x, x_468.y, x_468.z) * x_472) + x_476);
  let x_478 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_480 : vec4<f32> = u_xlat0;
  let x_483 : vec3<f32> = log2(abs(vec3<f32>(x_480.x, x_480.y, x_480.z)));
  let x_484 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat0;
  let x_491 : vec3<f32> = ((vec3<f32>(x_486.x, x_486.y, x_486.z) * vec3<f32>(340282346638528859811704183484516925440.0f, 340282346638528859811704183484516925440.0f, 340282346638528859811704183484516925440.0f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_492 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat0;
  let x_499 : vec3<f32> = clamp(vec3<f32>(x_494.x, x_494.y, x_494.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_500 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat0;
  let x_509 : vec3<f32> = ((vec3<f32>(x_502.x, x_502.y, x_502.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_510 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat1;
  let x_516 : vec3<f32> = x_17.x_InvGamma;
  let x_517 : vec3<f32> = (vec3<f32>(x_512.x, x_512.y, x_512.z) * x_516);
  let x_518 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec4<f32> = u_xlat1;
  let x_522 : vec3<f32> = exp2(vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat0;
  let x_527 : vec4<f32> = u_xlat1;
  let x_529 : vec3<f32> = (vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_530 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_532 : vec4<f32> = u_xlat0;
  let x_534 : vec3<f32> = max(vec3<f32>(x_532.x, x_532.y, x_532.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_535 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_539 : f32 = u_xlat0.y;
  let x_541 : f32 = u_xlat0.z;
  u_xlatb12 = (x_539 >= x_541);
  let x_544 : bool = u_xlatb12;
  u_xlat12 = select(0.0f, 1.0f, x_544);
  let x_546 : vec4<f32> = u_xlat0;
  let x_547 : vec2<f32> = vec2<f32>(x_546.z, x_546.y);
  let x_548 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_547.x, x_547.y, x_548.z, x_548.w);
  let x_550 : vec4<f32> = u_xlat0;
  let x_552 : vec4<f32> = u_xlat1;
  let x_555 : vec2<f32> = (vec2<f32>(x_550.y, x_550.z) + -(vec2<f32>(x_552.x, x_552.y)));
  let x_556 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
  u_xlat1.z = -1.0f;
  u_xlat1.w = 0.666666687f;
  u_xlat2.z = 1.0f;
  u_xlat2.w = -1.0f;
  let x_563 : f32 = u_xlat12;
  let x_565 : vec4<f32> = u_xlat2;
  let x_568 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_563, x_563, x_563, x_563) * vec4<f32>(x_565.x, x_565.y, x_565.w, x_565.z)) + vec4<f32>(x_568.x, x_568.y, x_568.w, x_568.z));
  let x_572 : f32 = u_xlat0.x;
  let x_574 : f32 = u_xlat1.x;
  u_xlatb12 = (x_572 >= x_574);
  let x_576 : bool = u_xlatb12;
  u_xlat12 = select(0.0f, 1.0f, x_576);
  let x_579 : f32 = u_xlat1.w;
  u_xlat2.z = x_579;
  let x_582 : f32 = u_xlat0.x;
  u_xlat1.w = x_582;
  let x_585 : vec4<f32> = u_xlat0;
  u_xlat3.x = dot(vec3<f32>(x_585.x, x_585.y, x_585.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_593 : vec4<f32> = u_xlat1;
  let x_594 : vec3<f32> = vec3<f32>(x_593.w, x_593.y, x_593.x);
  let x_595 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_594.z);
  let x_597 : vec4<f32> = u_xlat1;
  let x_599 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_597) + x_599);
  let x_601 : f32 = u_xlat12;
  let x_603 : vec4<f32> = u_xlat2;
  let x_605 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec4<f32>(x_601, x_601, x_601, x_601) * x_603) + x_605);
  let x_608 : f32 = u_xlat0.y;
  let x_610 : f32 = u_xlat0.w;
  u_xlat1.x = min(x_608, x_610);
  let x_614 : f32 = u_xlat0.x;
  let x_616 : f32 = u_xlat1.x;
  u_xlat1.x = (x_614 + -(x_616));
  let x_621 : f32 = u_xlat1.x;
  u_xlat5.x = ((x_621 * 6.0f) + 0.0001f);
  let x_629 : f32 = u_xlat0.y;
  let x_632 : f32 = u_xlat0.w;
  u_xlat4.x = (-(x_629) + x_632);
  let x_636 : f32 = u_xlat4.x;
  let x_638 : f32 = u_xlat5.x;
  u_xlat4.x = (x_636 / x_638);
  let x_642 : f32 = u_xlat4.x;
  let x_644 : f32 = u_xlat0.z;
  u_xlat4.x = (x_642 + x_644);
  let x_648 : f32 = u_xlat4.x;
  u_xlat2.x = abs(x_648);
  let x_654 : f32 = u_xlat2.x;
  let x_656 : f32 = x_17.x_HueSatCon.x;
  u_xlat11.x = (x_654 + x_656);
  u_xlat3.y = 0.25f;
  u_xlat11.y = 0.25f;
  let x_672 : vec2<f32> = u_xlat11;
  let x_673 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_672, 0.0f);
  u_xlat4.x = x_673.x;
  let x_679 : vec3<f32> = u_xlat3;
  let x_681 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, vec2<f32>(x_679.x, x_679.y), 0.0f);
  u_xlat4.y = x_681.w;
  let x_684 : vec3<f32> = u_xlat4;
  let x_685 : vec2<f32> = vec2<f32>(x_684.x, x_684.y);
  let x_686 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_685.x, x_685.y, x_686.z);
  let x_688 : vec3<f32> = u_xlat4;
  let x_692 : vec2<f32> = clamp(vec2<f32>(x_688.x, x_688.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_693 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_692.x, x_692.y, x_693.z);
  let x_696 : f32 = u_xlat11.x;
  let x_698 : f32 = u_xlat4.x;
  u_xlat4.x = (x_696 + x_698);
  let x_701 : vec3<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_701.x, x_701.x, x_701.x) + vec3<f32>(-0.5f, 0.5f, -1.5f));
  let x_709 : f32 = u_xlat5.x;
  u_xlatb4 = (1.0f < x_709);
  let x_711 : bool = u_xlatb4;
  if (x_711) {
    let x_716 : f32 = u_xlat5.z;
    x_712 = x_716;
  } else {
    let x_719 : f32 = u_xlat5.x;
    x_712 = x_719;
  }
  let x_720 : f32 = x_712;
  u_xlat4.x = x_720;
  let x_723 : f32 = u_xlat5.x;
  u_xlatb12 = (x_723 < 0.0f);
  let x_725 : bool = u_xlatb12;
  if (x_725) {
    let x_730 : f32 = u_xlat5.y;
    x_726 = x_730;
  } else {
    let x_733 : f32 = u_xlat4.x;
    x_726 = x_733;
  }
  let x_734 : f32 = x_726;
  u_xlat4.x = x_734;
  let x_736 : vec3<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_736.x, x_736.x, x_736.x) + vec3<f32>(1.0f, 0.666666687f, 0.333333343f));
  let x_741 : vec3<f32> = u_xlat5;
  u_xlat5 = fract(x_741);
  let x_743 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_743 * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_749 : vec3<f32> = u_xlat5;
  u_xlat5 = (abs(x_749) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_752 : vec3<f32> = u_xlat5;
  u_xlat5 = clamp(x_752, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_756 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_756 + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_759 : f32 = u_xlat0.x;
  u_xlat4.x = (x_759 + 0.0001f);
  let x_764 : f32 = u_xlat1.x;
  let x_766 : f32 = u_xlat4.x;
  u_xlat10.x = (x_764 / x_766);
  let x_769 : vec2<f32> = u_xlat10;
  let x_771 : vec3<f32> = u_xlat5;
  let x_774 : vec3<f32> = ((vec3<f32>(x_769.x, x_769.x, x_769.x) * x_771) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_777 : vec4<f32> = u_xlat0;
  let x_779 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec3<f32>(x_777.x, x_777.x, x_777.x) * vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec3<f32> = u_xlat3;
  u_xlat4.x = dot(x_782, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_785 : vec4<f32> = u_xlat0;
  let x_787 : vec4<f32> = u_xlat1;
  let x_790 : vec3<f32> = u_xlat4;
  let x_793 : vec3<f32> = ((vec3<f32>(x_785.x, x_785.x, x_785.x) * vec3<f32>(x_787.x, x_787.y, x_787.z)) + -(vec3<f32>(x_790.x, x_790.x, x_790.x)));
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  u_xlat2.y = 0.25f;
  u_xlat10.y = 0.25f;
  let x_801 : vec4<f32> = u_xlat2;
  let x_803 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, vec2<f32>(x_801.x, x_801.y), 0.0f);
  u_xlat0.x = x_803.y;
  let x_809 : vec2<f32> = u_xlat10;
  let x_810 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_809, 0.0f);
  u_xlat0.w = x_810.z;
  let x_813 : vec4<f32> = u_xlat0;
  let x_814 : vec2<f32> = vec2<f32>(x_813.x, x_813.w);
  let x_815 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_814.x, x_815.y, x_815.z, x_814.y);
  let x_817 : vec4<f32> = u_xlat0;
  let x_821 : vec2<f32> = clamp(vec2<f32>(x_817.x, x_817.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_822 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_821.x, x_822.y, x_822.z, x_821.y);
  let x_825 : f32 = u_xlat0.x;
  let x_827 : f32 = u_xlat0.x;
  u_xlat0.x = (x_825 + x_827);
  let x_830 : vec4<f32> = u_xlat0;
  let x_832 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_830.w, x_830.w), vec2<f32>(x_832.x, x_832.x));
  let x_837 : f32 = u_xlat0.x;
  let x_839 : f32 = u_xlat4.y;
  u_xlat0.x = (x_837 * x_839);
  let x_843 : vec3<f32> = x_17.x_HueSatCon;
  let x_845 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_843.y, x_843.y), vec2<f32>(x_845.x, x_845.x));
  let x_849 : vec4<f32> = u_xlat0;
  let x_851 : vec4<f32> = u_xlat1;
  let x_854 : vec3<f32> = u_xlat4;
  let x_856 : vec3<f32> = ((vec3<f32>(x_849.x, x_849.x, x_849.x) * vec3<f32>(x_851.x, x_851.y, x_851.z)) + vec3<f32>(x_854.x, x_854.x, x_854.x));
  let x_857 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_863 : vec4<f32> = u_xlat0;
  u_xlat5.x = dot(vec3<f32>(0.695452213f, 0.140678704f, 0.163869068f), vec3<f32>(x_863.x, x_863.y, x_863.z));
  let x_871 : vec4<f32> = u_xlat0;
  u_xlat5.y = dot(vec3<f32>(0.044794563f, 0.859671116f, 0.095534317f), vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_879 : vec4<f32> = u_xlat0;
  u_xlat5.z = dot(vec3<f32>(-0.005525883f, 0.00402521f, 1.001500726f), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : vec3<f32> = u_xlat5;
  let x_886 : vec3<f32> = u_xlat5;
  let x_888 : vec3<f32> = (-(vec3<f32>(x_883.y, x_883.x, x_883.z)) + vec3<f32>(x_886.z, x_886.y, x_886.x));
  let x_889 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_891 : vec4<f32> = u_xlat0;
  let x_893 : vec3<f32> = u_xlat5;
  let x_895 : vec2<f32> = (vec2<f32>(x_891.x, x_891.y) * vec2<f32>(x_893.z, x_893.y));
  let x_896 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
  let x_899 : f32 = u_xlat0.y;
  let x_901 : f32 = u_xlat0.x;
  u_xlat0.x = (x_899 + x_901);
  let x_905 : f32 = u_xlat5.x;
  let x_907 : f32 = u_xlat0.z;
  let x_910 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_905 * x_907) + x_910);
  let x_914 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_914);
  let x_918 : f32 = u_xlat5.y;
  let x_920 : f32 = u_xlat5.z;
  u_xlat4.x = (x_918 + x_920);
  let x_924 : f32 = u_xlat5.x;
  let x_926 : f32 = u_xlat4.x;
  u_xlat4.x = (x_924 + x_926);
  let x_930 : f32 = u_xlat0.x;
  let x_934 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_930 * 1.75f) + x_934);
  let x_938 : f32 = u_xlat0.x;
  u_xlat4.x = (x_938 * 0.333333343f);
  let x_943 : f32 = u_xlat4.x;
  u_xlat4.x = (0.079999998f / x_943);
  let x_947 : f32 = u_xlat5.y;
  let x_949 : f32 = u_xlat5.x;
  u_xlat8 = min(x_947, x_949);
  let x_952 : f32 = u_xlat5.z;
  let x_953 : f32 = u_xlat8;
  u_xlat8 = min(x_952, x_953);
  let x_955 : f32 = u_xlat8;
  u_xlat8 = max(x_955, 0.0001f);
  let x_958 : f32 = u_xlat5.y;
  let x_960 : f32 = u_xlat5.x;
  u_xlat12 = max(x_958, x_960);
  let x_963 : f32 = u_xlat5.z;
  let x_964 : f32 = u_xlat12;
  u_xlat12 = max(x_963, x_964);
  let x_966 : f32 = u_xlat12;
  let x_970 : vec2<f32> = max(vec2<f32>(x_966, x_966), vec2<f32>(0.0001f, 0.01f));
  let x_971 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
  let x_973 : f32 = u_xlat8;
  let x_976 : f32 = u_xlat2.x;
  u_xlat8 = (-(x_973) + x_976);
  let x_978 : f32 = u_xlat8;
  let x_980 : f32 = u_xlat2.y;
  u_xlat4.y = (x_978 / x_980);
  let x_983 : vec3<f32> = u_xlat4;
  let x_987 : vec2<f32> = (vec2<f32>(x_983.x, x_983.y) + vec2<f32>(-0.5f, -0.400000006f));
  let x_988 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_987.x, x_988.y, x_987.y);
  let x_991 : f32 = u_xlat4.z;
  u_xlat1.x = (x_991 * 2.5f);
  let x_996 : f32 = u_xlat4.z;
  u_xlat12 = ((x_996 * bitcast<f32>(2139095040i)) + 0.5f);
  let x_1001 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1001, 0.0f, 1.0f);
  let x_1003 : f32 = u_xlat12;
  u_xlat12 = ((x_1003 * 2.0f) + -1.0f);
  let x_1007 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1007)) + 1.0f);
  let x_1013 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1013, 0.0f);
  let x_1017 : f32 = u_xlat1.x;
  let x_1020 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_1017) * x_1020) + 1.0f);
  let x_1024 : f32 = u_xlat12;
  let x_1026 : f32 = u_xlat1.x;
  u_xlat12 = ((x_1024 * x_1026) + 1.0f);
  let x_1029 : f32 = u_xlat12;
  u_xlat12 = (x_1029 * 0.025f);
  let x_1033 : f32 = u_xlat4.x;
  let x_1034 : f32 = u_xlat12;
  u_xlat4.x = (x_1033 * x_1034);
  let x_1038 : f32 = u_xlat0.x;
  u_xlatb1.x = (x_1038 >= 0.479999989f);
  let x_1044 : f32 = u_xlat0.x;
  u_xlatb0.x = (0.159999996f >= x_1044);
  let x_1048 : bool = u_xlatb1.x;
  if (x_1048) {
    x_1049 = 0.0f;
  } else {
    let x_1054 : f32 = u_xlat4.x;
    x_1049 = x_1054;
  }
  let x_1055 : f32 = x_1049;
  u_xlat4.x = x_1055;
  let x_1058 : bool = u_xlatb0.x;
  if (x_1058) {
    let x_1062 : f32 = u_xlat12;
    x_1059 = x_1062;
  } else {
    let x_1065 : f32 = u_xlat4.x;
    x_1059 = x_1065;
  }
  let x_1066 : f32 = x_1059;
  u_xlat0.x = x_1066;
  let x_1069 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1069 + 1.0f);
  let x_1072 : vec4<f32> = u_xlat0;
  let x_1074 : vec3<f32> = u_xlat5;
  let x_1075 : vec3<f32> = (vec3<f32>(x_1072.x, x_1072.x, x_1072.x) * x_1074);
  let x_1076 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1076.x, x_1075.x, x_1075.y, x_1075.z);
  let x_1079 : f32 = u_xlat5.x;
  let x_1082 : f32 = u_xlat0.x;
  u_xlat4.x = ((-(x_1079) * x_1082) + 0.029999999f);
  let x_1088 : f32 = u_xlat5.y;
  let x_1090 : f32 = u_xlat0.x;
  let x_1093 : f32 = u_xlat2.w;
  u_xlat12 = ((x_1088 * x_1090) + -(x_1093));
  let x_1096 : f32 = u_xlat12;
  u_xlat12 = (x_1096 * 1.732050776f);
  let x_1100 : f32 = u_xlat2.y;
  let x_1103 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_1100 * 2.0f) + -(x_1103));
  let x_1108 : f32 = u_xlat5.z;
  let x_1111 : f32 = u_xlat0.x;
  let x_1114 : f32 = u_xlat1.x;
  u_xlat0.x = ((-(x_1108) * x_1111) + x_1114);
  let x_1118 : f32 = u_xlat0.x;
  let x_1120 : f32 = u_xlat12;
  u_xlat1.x = max(abs(x_1118), abs(x_1120));
  let x_1125 : f32 = u_xlat1.x;
  u_xlat1.x = (1.0f / x_1125);
  let x_1129 : f32 = u_xlat0.x;
  let x_1131 : f32 = u_xlat12;
  u_xlat5.x = min(abs(x_1129), abs(x_1131));
  let x_1136 : f32 = u_xlat1.x;
  let x_1138 : f32 = u_xlat5.x;
  u_xlat1.x = (x_1136 * x_1138);
  let x_1142 : f32 = u_xlat1.x;
  let x_1144 : f32 = u_xlat1.x;
  u_xlat5.x = (x_1142 * x_1144);
  let x_1149 : f32 = u_xlat5.x;
  u_xlat9 = ((x_1149 * 0.0208351f) + -0.085133001f);
  let x_1155 : f32 = u_xlat5.x;
  let x_1156 : f32 = u_xlat9;
  u_xlat9 = ((x_1155 * x_1156) + 0.180141002f);
  let x_1161 : f32 = u_xlat5.x;
  let x_1162 : f32 = u_xlat9;
  u_xlat9 = ((x_1161 * x_1162) + -0.330299497f);
  let x_1167 : f32 = u_xlat5.x;
  let x_1168 : f32 = u_xlat9;
  u_xlat5.x = ((x_1167 * x_1168) + 0.999866009f);
  let x_1174 : f32 = u_xlat5.x;
  let x_1176 : f32 = u_xlat1.x;
  u_xlat9 = (x_1174 * x_1176);
  let x_1178 : f32 = u_xlat9;
  u_xlat9 = ((x_1178 * -2.0f) + 1.570796371f);
  let x_1185 : f32 = u_xlat0.x;
  let x_1187 : f32 = u_xlat12;
  u_xlatb13 = (abs(x_1185) < abs(x_1187));
  let x_1190 : bool = u_xlatb13;
  let x_1191 : f32 = u_xlat9;
  u_xlat9 = select(0.0f, x_1191, x_1190);
  let x_1194 : f32 = u_xlat1.x;
  let x_1196 : f32 = u_xlat5.x;
  let x_1198 : f32 = u_xlat9;
  u_xlat1.x = ((x_1194 * x_1196) + x_1198);
  let x_1203 : f32 = u_xlat0.x;
  let x_1205 : f32 = u_xlat0.x;
  u_xlatb5 = (x_1203 < -(x_1205));
  let x_1208 : bool = u_xlatb5;
  u_xlat5.x = select(0.0f, -3.141592741f, x_1208);
  let x_1213 : f32 = u_xlat5.x;
  let x_1215 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1213 + x_1215);
  let x_1219 : f32 = u_xlat0.x;
  let x_1220 : f32 = u_xlat12;
  u_xlat5.x = min(x_1219, x_1220);
  let x_1224 : f32 = u_xlat0.x;
  let x_1225 : f32 = u_xlat12;
  u_xlat0.x = max(x_1224, x_1225);
  let x_1229 : f32 = u_xlat0.x;
  let x_1231 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_1229 >= -(x_1231));
  let x_1236 : f32 = u_xlat5.x;
  let x_1238 : f32 = u_xlat5.x;
  u_xlatb12 = (x_1236 < -(x_1238));
  let x_1242 : bool = u_xlatb0.x;
  let x_1243 : bool = u_xlatb12;
  u_xlatb0.x = (x_1242 & x_1243);
  let x_1247 : bool = u_xlatb0.x;
  if (x_1247) {
    let x_1252 : f32 = u_xlat1.x;
    x_1248 = -(x_1252);
  } else {
    let x_1256 : f32 = u_xlat1.x;
    x_1248 = x_1256;
  }
  let x_1257 : f32 = x_1248;
  u_xlat0.x = x_1257;
  let x_1260 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1260 * 57.295780182f);
  let x_1264 : vec4<f32> = u_xlat2;
  let x_1266 : vec4<f32> = u_xlat2;
  let x_1268 : vec4<bool> = (vec4<f32>(x_1264.z, x_1264.w, x_1264.z, x_1264.z) == vec4<f32>(x_1266.y, x_1266.z, x_1266.y, x_1266.y));
  let x_1269 : vec2<bool> = vec2<bool>(x_1268.x, x_1268.y);
  let x_1270 : vec4<bool> = u_xlatb1;
  u_xlatb1 = vec4<bool>(x_1269.x, x_1269.y, x_1270.z, x_1270.w);
  let x_1273 : bool = u_xlatb1.y;
  let x_1275 : bool = u_xlatb1.x;
  u_xlatb12 = (x_1273 & x_1275);
  let x_1277 : bool = u_xlatb12;
  if (x_1277) {
    x_1278 = 0.0f;
  } else {
    let x_1283 : f32 = u_xlat0.x;
    x_1278 = x_1283;
  }
  let x_1284 : f32 = x_1278;
  u_xlat0.x = x_1284;
  let x_1287 : f32 = u_xlat0.x;
  u_xlatb12 = (x_1287 < 0.0f);
  let x_1290 : f32 = u_xlat0.x;
  u_xlat1.x = (x_1290 + 360.0f);
  let x_1294 : bool = u_xlatb12;
  if (x_1294) {
    let x_1299 : f32 = u_xlat1.x;
    x_1295 = x_1299;
  } else {
    let x_1302 : f32 = u_xlat0.x;
    x_1295 = x_1302;
  }
  let x_1303 : f32 = x_1295;
  u_xlat0.x = x_1303;
  let x_1307 : f32 = u_xlat0.x;
  u_xlatb12 = (180.0f < x_1307);
  let x_1309 : vec4<f32> = u_xlat0;
  let x_1313 : vec2<f32> = (vec2<f32>(x_1309.x, x_1309.x) + vec2<f32>(360.0f, -360.0f));
  let x_1314 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
  let x_1316 : bool = u_xlatb12;
  if (x_1316) {
    let x_1321 : f32 = u_xlat1.y;
    x_1317 = x_1321;
  } else {
    let x_1324 : f32 = u_xlat0.x;
    x_1317 = x_1324;
  }
  let x_1325 : f32 = x_1317;
  u_xlat12 = x_1325;
  let x_1327 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_1327 < -180.0f);
  let x_1332 : bool = u_xlatb0.x;
  if (x_1332) {
    let x_1337 : f32 = u_xlat1.x;
    x_1333 = x_1337;
  } else {
    let x_1339 : f32 = u_xlat12;
    x_1333 = x_1339;
  }
  let x_1340 : f32 = x_1333;
  u_xlat0.x = x_1340;
  let x_1343 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1343 * 0.014814815f);
  let x_1348 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_1348)) + 1.0f);
  let x_1354 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1354, 0.0f);
  let x_1358 : f32 = u_xlat0.x;
  u_xlat12 = ((x_1358 * -2.0f) + 3.0f);
  let x_1363 : f32 = u_xlat0.x;
  let x_1365 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1363 * x_1365);
  let x_1369 : f32 = u_xlat0.x;
  let x_1370 : f32 = u_xlat12;
  u_xlat0.x = (x_1369 * x_1370);
  let x_1374 : f32 = u_xlat0.x;
  let x_1376 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1374 * x_1376);
  let x_1380 : f32 = u_xlat4.y;
  let x_1382 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1380 * x_1382);
  let x_1386 : f32 = u_xlat4.x;
  let x_1388 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1386 * x_1388);
  let x_1392 : f32 = u_xlat0.x;
  let x_1396 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1392 * 0.180000007f) + x_1396);
  let x_1399 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.451439261f, -0.236510754f, -0.214928567f), vec3<f32>(x_1399.x, x_1399.z, x_1399.w));
  let x_1403 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.076553777f, 1.176229715f, -0.099675924f), vec3<f32>(x_1403.x, x_1403.z, x_1403.w));
  let x_1407 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.008316148f, -0.00603244966f, 0.997716308f), vec3<f32>(x_1407.x, x_1407.z, x_1407.w));
  let x_1411 : vec4<f32> = u_xlat0;
  let x_1413 : vec3<f32> = max(vec3<f32>(x_1411.x, x_1411.y, x_1411.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1414 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
  let x_1416 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_1416.x, x_1416.y, x_1416.z), vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_1423 : f32 = u_xlat12;
  let x_1426 : vec4<f32> = u_xlat0;
  let x_1428 : vec3<f32> = (-(vec3<f32>(x_1423, x_1423, x_1423)) + vec3<f32>(x_1426.x, x_1426.y, x_1426.z));
  let x_1429 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
  let x_1431 : vec4<f32> = u_xlat0;
  let x_1436 : f32 = u_xlat12;
  let x_1438 : vec3<f32> = ((vec3<f32>(x_1431.x, x_1431.y, x_1431.z) * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f)) + vec3<f32>(x_1436, x_1436, x_1436));
  let x_1439 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
  let x_1441 : vec4<f32> = u_xlat0;
  let x_1448 : vec3<f32> = ((vec3<f32>(x_1441.x, x_1441.y, x_1441.z) * vec3<f32>(278.508514404f, 278.508514404f, 278.508514404f)) + vec3<f32>(10.777199745f, 10.777199745f, 10.777199745f));
  let x_1449 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1448.x, x_1448.y, x_1448.z, x_1449.w);
  let x_1451 : vec4<f32> = u_xlat0;
  let x_1453 : vec4<f32> = u_xlat1;
  let x_1455 : vec3<f32> = (vec3<f32>(x_1451.x, x_1451.y, x_1451.z) * vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
  let x_1456 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
  let x_1458 : vec4<f32> = u_xlat0;
  let x_1465 : vec3<f32> = ((vec3<f32>(x_1458.x, x_1458.y, x_1458.z) * vec3<f32>(293.604492188f, 293.604492188f, 293.604492188f)) + vec3<f32>(88.71219635f, 88.71219635f, 88.71219635f));
  let x_1466 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1465.x, x_1465.y, x_1465.z, x_1466.w);
  let x_1468 : vec4<f32> = u_xlat0;
  let x_1470 : vec4<f32> = u_xlat2;
  let x_1475 : vec3<f32> = ((vec3<f32>(x_1468.x, x_1468.y, x_1468.z) * vec3<f32>(x_1470.x, x_1470.y, x_1470.z)) + vec3<f32>(80.688903809f, 80.688903809f, 80.688903809f));
  let x_1476 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1475.x, x_1475.y, x_1475.z, x_1476.w);
  let x_1478 : vec4<f32> = u_xlat1;
  let x_1480 : vec4<f32> = u_xlat0;
  let x_1482 : vec3<f32> = (vec3<f32>(x_1478.x, x_1478.y, x_1478.z) / vec3<f32>(x_1480.x, x_1480.y, x_1480.z));
  let x_1483 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1482.x, x_1482.y, x_1482.z, x_1483.w);
  let x_1489 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), vec3<f32>(x_1489.x, x_1489.y, x_1489.z));
  let x_1497 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), vec3<f32>(x_1497.x, x_1497.y, x_1497.z));
  let x_1505 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
  let x_1509 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_1509.x, x_1509.y, x_1509.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1514 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1514, 0.0001f);
  let x_1517 : vec4<f32> = u_xlat1;
  let x_1519 : vec4<f32> = u_xlat0;
  let x_1521 : vec2<f32> = (vec2<f32>(x_1517.x, x_1517.y) / vec2<f32>(x_1519.x, x_1519.x));
  let x_1522 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1521.x, x_1521.y, x_1522.z, x_1522.w);
  let x_1525 : f32 = u_xlat1.y;
  u_xlat12 = max(x_1525, 0.0f);
  let x_1527 : f32 = u_xlat12;
  u_xlat12 = min(x_1527, 65504.0f);
  let x_1529 : f32 = u_xlat12;
  u_xlat12 = log2(x_1529);
  let x_1531 : f32 = u_xlat12;
  u_xlat12 = (x_1531 * 0.981100023f);
  let x_1534 : f32 = u_xlat12;
  u_xlat1.y = exp2(x_1534);
  let x_1538 : f32 = u_xlat0.x;
  u_xlat12 = (-(x_1538) + 1.0f);
  let x_1542 : f32 = u_xlat0.y;
  let x_1544 : f32 = u_xlat12;
  u_xlat0.z = (-(x_1542) + x_1544);
  let x_1548 : f32 = u_xlat0.y;
  u_xlat4.x = max(x_1548, 0.0001f);
  let x_1552 : f32 = u_xlat1.y;
  let x_1554 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1552 / x_1554);
  let x_1557 : vec3<f32> = u_xlat4;
  let x_1559 : vec4<f32> = u_xlat0;
  let x_1561 : vec2<f32> = (vec2<f32>(x_1557.x, x_1557.x) * vec2<f32>(x_1559.x, x_1559.z));
  let x_1562 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1561.x, x_1562.y, x_1561.y, x_1562.w);
  let x_1568 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.641023397f, -0.324803293f, -0.236424699f), vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
  let x_1576 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.663662851f, 1.61533165f, 0.016756348f), vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
  let x_1584 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.011721894f, -0.008284442f, 0.988394856f), vec3<f32>(x_1584.x, x_1584.y, x_1584.z));
  let x_1588 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_1588.x, x_1588.y, x_1588.z), vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_1591 : f32 = u_xlat12;
  let x_1594 : vec4<f32> = u_xlat0;
  let x_1596 : vec3<f32> = (-(vec3<f32>(x_1591, x_1591, x_1591)) + vec3<f32>(x_1594.x, x_1594.y, x_1594.z));
  let x_1597 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1596.x, x_1596.y, x_1596.z, x_1597.w);
  let x_1599 : vec4<f32> = u_xlat0;
  let x_1604 : f32 = u_xlat12;
  let x_1606 : vec3<f32> = ((vec3<f32>(x_1599.x, x_1599.y, x_1599.z) * vec3<f32>(0.930000007f, 0.930000007f, 0.930000007f)) + vec3<f32>(x_1604, x_1604, x_1604));
  let x_1607 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1606.x, x_1606.y, x_1606.z, x_1607.w);
  let x_1609 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), vec3<f32>(x_1609.x, x_1609.y, x_1609.z));
  let x_1613 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), vec3<f32>(x_1613.x, x_1613.y, x_1613.z));
  let x_1617 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), vec3<f32>(x_1617.x, x_1617.y, x_1617.z));
  let x_1625 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.987223983f, -0.00611327f, 0.015953301f), vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
  let x_1633 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836f, 1.001860023f, 0.0053302f), vec3<f32>(x_1633.x, x_1633.y, x_1633.z));
  let x_1641 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.00307257f, -0.00509595f, 1.081680059f), vec3<f32>(x_1641.x, x_1641.y, x_1641.z));
  let x_1649 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.240969896f, -1.537383199f, -0.498610765f), vec3<f32>(x_1649.x, x_1649.y, x_1649.z));
  let x_1657 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.969243646f, 1.875967503f, 0.041555058f), vec3<f32>(x_1657.x, x_1657.y, x_1657.z));
  let x_1665 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008f, -0.203976959f, 1.05697155f), vec3<f32>(x_1665.x, x_1665.y, x_1665.z));
  let x_1671 : vec4<f32> = u_xlat1;
  let x_1673 : vec3<f32> = max(vec3<f32>(x_1671.x, x_1671.y, x_1671.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1674 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1673.x, x_1673.y, x_1673.z, x_1674.w);
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

