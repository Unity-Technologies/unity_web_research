struct PGlobals {
  x_Lut2D_Params : vec4<f32>,
  x_UserLut2D_Params : vec4<f32>,
  x_ColorBalance : vec3<f32>,
  @size(4)
  padding : u32,
  x_ColorFilter : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_HueSatCon : vec3<f32>,
  x_Brightness : f32,
  x_ChannelMixerRed : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_ChannelMixerGreen : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_ChannelMixerBlue : vec3<f32>,
  @size(4)
  padding_4 : u32,
  x_Lift : vec3<f32>,
  @size(4)
  padding_5 : u32,
  x_InvGamma : vec3<f32>,
  @size(4)
  padding_6 : u32,
  x_Gain : vec3<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_13 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat6 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat7 : f32;

@group(0) @binding(2) var x_Curves : texture_2d<f32>;

@group(0) @binding(4) var sampler_Curves : sampler;

var<private> u_xlatb6 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlatb5 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_624 : f32;
  var x_638 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : f32 = x_13.x_UserLut2D_Params.y;
  u_xlat0.x = x_20;
  let x_28 : vec2<f32> = vs_TEXCOORD1;
  let x_32 : vec4<f32> = x_13.x_Lut2D_Params;
  let x_35 : vec2<f32> = (x_28 + -(vec2<f32>(x_32.y, x_32.z)));
  let x_36 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_36.x, x_35.x, x_35.y, x_36.w);
  let x_40 : f32 = u_xlat1.y;
  let x_42 : f32 = x_13.x_Lut2D_Params.x;
  u_xlat2.x = (x_40 * x_42);
  let x_46 : f32 = u_xlat2.x;
  u_xlat1.x = fract(x_46);
  let x_50 : f32 = u_xlat1.x;
  let x_52 : f32 = x_13.x_Lut2D_Params.x;
  u_xlat2.x = (x_50 / x_52);
  let x_56 : f32 = u_xlat1.y;
  let x_58 : f32 = u_xlat2.x;
  u_xlat1.w = (x_56 + -(x_58));
  let x_63 : vec4<f32> = u_xlat1;
  let x_66 : vec4<f32> = x_13.x_Lut2D_Params;
  let x_68 : vec3<f32> = (vec3<f32>(x_63.x, x_63.z, x_63.w) * vec3<f32>(x_66.w, x_66.w, x_66.w));
  let x_69 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_72 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = x_13.x_UserLut2D_Params;
  let x_77 : vec3<f32> = (vec3<f32>(x_72.z, x_72.x, x_72.y) * vec3<f32>(x_75.z, x_75.z, x_75.z));
  let x_78 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_77.x, x_77.y, x_77.z, x_78.w);
  let x_83 : f32 = u_xlat3.x;
  u_xlat6.x = floor(x_83);
  let x_87 : vec4<f32> = x_13.x_UserLut2D_Params;
  let x_91 : vec2<f32> = (vec2<f32>(x_87.x, x_87.y) * vec2<f32>(0.5f, 0.5f));
  let x_92 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_91.x, x_92.y, x_92.z, x_91.y);
  let x_94 : vec4<f32> = u_xlat3;
  let x_97 : vec4<f32> = x_13.x_UserLut2D_Params;
  let x_100 : vec4<f32> = u_xlat3;
  let x_102 : vec2<f32> = ((vec2<f32>(x_94.y, x_94.z) * vec2<f32>(x_97.x, x_97.y)) + vec2<f32>(x_100.x, x_100.w));
  let x_103 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_103.x, x_102.x, x_102.y, x_103.w);
  let x_106 : f32 = u_xlat6.x;
  let x_108 : f32 = x_13.x_UserLut2D_Params.y;
  let x_111 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_106 * x_108) + x_111);
  let x_116 : f32 = u_xlat2.z;
  let x_118 : f32 = x_13.x_UserLut2D_Params.z;
  let x_121 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_116 * x_118) + -(x_121));
  u_xlat0.y = 0.0f;
  u_xlat10.y = 0.25f;
  let x_130 : vec4<f32> = u_xlat0;
  let x_132 : vec4<f32> = u_xlat3;
  let x_134 : vec2<f32> = (vec2<f32>(x_130.x, x_130.y) + vec2<f32>(x_132.x, x_132.z));
  let x_135 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_134.x, x_134.y, x_135.z, x_135.w);
  let x_147 : vec4<f32> = u_xlat3;
  let x_149 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_147.x, x_147.z));
  let x_150 : vec3<f32> = vec3<f32>(x_149.x, x_149.y, x_149.z);
  let x_151 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_158.x, x_158.y));
  u_xlat4 = vec3<f32>(x_160.x, x_160.y, x_160.z);
  let x_162 : vec4<f32> = u_xlat3;
  let x_165 : vec3<f32> = u_xlat4;
  u_xlat4 = (-(vec3<f32>(x_162.x, x_162.y, x_162.z)) + x_165);
  let x_167 : vec2<f32> = u_xlat6;
  let x_169 : vec3<f32> = u_xlat4;
  let x_171 : vec4<f32> = u_xlat3;
  let x_173 : vec3<f32> = ((vec3<f32>(x_167.x, x_167.x, x_167.x) * x_169) + vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_176 : vec4<f32> = u_xlat1;
  let x_180 : vec4<f32> = x_13.x_Lut2D_Params;
  let x_183 : vec4<f32> = u_xlat3;
  let x_185 : vec3<f32> = ((-(vec3<f32>(x_176.x, x_176.z, x_176.w)) * vec3<f32>(x_180.w, x_180.w, x_180.w)) + vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_189 : vec4<f32> = x_13.x_UserLut2D_Params;
  let x_191 : vec4<f32> = u_xlat1;
  let x_194 : vec4<f32> = u_xlat2;
  let x_196 : vec3<f32> = ((vec3<f32>(x_189.w, x_189.w, x_189.w) * vec3<f32>(x_191.x, x_191.y, x_191.z)) + vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_197 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_199 : vec4<f32> = u_xlat1;
  let x_203 : f32 = x_13.x_Brightness;
  let x_205 : f32 = x_13.x_Brightness;
  let x_207 : f32 = x_13.x_Brightness;
  let x_208 : vec3<f32> = vec3<f32>(x_203, x_205, x_207);
  let x_216 : vec3<f32> = ((vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_208.x, x_208.y, x_208.z)) + vec3<f32>(-0.217637643f, -0.217637643f, -0.217637643f));
  let x_217 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat1;
  let x_224 : vec3<f32> = x_13.x_HueSatCon;
  let x_229 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_224.z, x_224.z, x_224.z)) + vec3<f32>(0.217637643f, 0.217637643f, 0.217637643f));
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(0.390404999f, 0.549941003f, 0.00892632f), vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_244 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(vec3<f32>(0.070841603f, 0.963172019f, 0.00135775f), vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(vec3<f32>(0.023108199f, 0.128021002f, 0.936245024f), vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_256 : vec4<f32> = u_xlat2;
  let x_260 : vec3<f32> = x_13.x_ColorBalance;
  let x_261 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) * x_260);
  let x_262 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_268 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(2.858469963f, -1.628790021f, -0.024891f), vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_276 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(vec3<f32>(-0.210181996f, 1.158200026f, 0.000324281f), vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_284 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(vec3<f32>(-0.041811999f, -0.118169002f, 1.068670034f), vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_288 : vec4<f32> = u_xlat2;
  let x_292 : vec3<f32> = x_13.x_ColorFilter;
  let x_293 : vec3<f32> = (vec3<f32>(x_288.x, x_288.y, x_288.z) * x_292);
  let x_294 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec4<f32> = u_xlat1;
  let x_300 : vec3<f32> = x_13.x_ChannelMixerRed;
  u_xlat2.x = dot(vec3<f32>(x_296.x, x_296.y, x_296.z), x_300);
  let x_303 : vec4<f32> = u_xlat1;
  let x_307 : vec3<f32> = x_13.x_ChannelMixerGreen;
  u_xlat2.y = dot(vec3<f32>(x_303.x, x_303.y, x_303.z), x_307);
  let x_310 : vec4<f32> = u_xlat1;
  let x_314 : vec3<f32> = x_13.x_ChannelMixerBlue;
  u_xlat2.z = dot(vec3<f32>(x_310.x, x_310.y, x_310.z), x_314);
  let x_317 : vec4<f32> = u_xlat2;
  let x_321 : vec3<f32> = x_13.x_Gain;
  let x_325 : vec3<f32> = x_13.x_Lift;
  let x_326 : vec3<f32> = ((vec3<f32>(x_317.x, x_317.y, x_317.z) * x_321) + x_325);
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat1;
  let x_332 : vec3<f32> = log2(abs(vec3<f32>(x_329.x, x_329.y, x_329.z)));
  let x_333 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat1;
  let x_341 : vec3<f32> = ((vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(340282346638528859811704183484516925440.0f, 340282346638528859811704183484516925440.0f, 340282346638528859811704183484516925440.0f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_342 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat1;
  let x_349 : vec3<f32> = clamp(vec3<f32>(x_344.x, x_344.y, x_344.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat1;
  let x_359 : vec3<f32> = ((vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat2;
  let x_366 : vec3<f32> = x_13.x_InvGamma;
  let x_367 : vec3<f32> = (vec3<f32>(x_362.x, x_362.y, x_362.z) * x_366);
  let x_368 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat2;
  let x_372 : vec3<f32> = exp2(vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_375 : vec4<f32> = u_xlat1;
  let x_377 : vec4<f32> = u_xlat2;
  let x_379 : vec3<f32> = (vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat1;
  let x_385 : vec3<f32> = max(vec3<f32>(x_382.x, x_382.y, x_382.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_386 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_392 : f32 = u_xlat1.y;
  let x_394 : f32 = u_xlat1.z;
  u_xlatb0 = (x_392 >= x_394);
  let x_396 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_396);
  let x_399 : vec4<f32> = u_xlat1;
  let x_400 : vec2<f32> = vec2<f32>(x_399.z, x_399.y);
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat1;
  let x_405 : vec4<f32> = u_xlat2;
  let x_408 : vec2<f32> = (vec2<f32>(x_403.y, x_403.z) + -(vec2<f32>(x_405.x, x_405.y)));
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_408.x, x_408.y, x_409.z, x_409.w);
  u_xlat2.z = -1.0f;
  u_xlat2.w = 0.666666687f;
  u_xlat3.z = 1.0f;
  u_xlat3.w = -1.0f;
  let x_416 : vec4<f32> = u_xlat0;
  let x_418 : vec4<f32> = u_xlat3;
  let x_421 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_416.x, x_416.x, x_416.x, x_416.x) * vec4<f32>(x_418.x, x_418.y, x_418.w, x_418.z)) + vec4<f32>(x_421.x, x_421.y, x_421.w, x_421.z));
  let x_425 : f32 = u_xlat1.x;
  let x_427 : f32 = u_xlat2.x;
  u_xlatb0 = (x_425 >= x_427);
  let x_429 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_429);
  let x_433 : f32 = u_xlat2.w;
  u_xlat3.z = x_433;
  let x_436 : f32 = u_xlat1.x;
  u_xlat2.w = x_436;
  let x_439 : vec4<f32> = u_xlat1;
  u_xlat11.x = dot(vec3<f32>(x_439.x, x_439.y, x_439.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_447 : vec4<f32> = u_xlat2;
  let x_448 : vec3<f32> = vec3<f32>(x_447.w, x_447.y, x_447.x);
  let x_449 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_448.x, x_448.y, x_449.z, x_448.z);
  let x_451 : vec4<f32> = u_xlat2;
  let x_453 : vec4<f32> = u_xlat3;
  u_xlat3 = (-(x_451) + x_453);
  let x_455 : vec4<f32> = u_xlat0;
  let x_457 : vec4<f32> = u_xlat3;
  let x_459 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_455.x, x_455.x, x_455.x, x_455.x) * x_457) + x_459);
  let x_462 : f32 = u_xlat2.y;
  let x_464 : f32 = u_xlat2.w;
  u_xlat0.x = min(x_462, x_464);
  let x_468 : f32 = u_xlat0.x;
  let x_471 : f32 = u_xlat2.x;
  u_xlat0.x = (-(x_468) + x_471);
  let x_476 : f32 = u_xlat0.x;
  u_xlat5.x = ((x_476 * 6.0f) + 0.0001f);
  let x_484 : f32 = u_xlat2.y;
  let x_487 : f32 = u_xlat2.w;
  u_xlat7 = (-(x_484) + x_487);
  let x_489 : f32 = u_xlat7;
  let x_491 : f32 = u_xlat5.x;
  u_xlat5.x = (x_489 / x_491);
  let x_495 : f32 = u_xlat5.x;
  let x_497 : f32 = u_xlat2.z;
  u_xlat5.x = (x_495 + x_497);
  let x_501 : f32 = u_xlat5.x;
  u_xlat10.x = abs(x_501);
  let x_509 : vec2<f32> = u_xlat10;
  let x_510 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_509, 0.0f);
  u_xlat5.x = x_510.y;
  let x_514 : f32 = u_xlat10.x;
  let x_516 : f32 = x_13.x_HueSatCon.x;
  u_xlat3.x = (x_514 + x_516);
  let x_520 : f32 = u_xlat5.x;
  u_xlat5.x = x_520;
  let x_523 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_523, 0.0f, 1.0f);
  let x_527 : f32 = u_xlat5.x;
  let x_529 : f32 = u_xlat5.x;
  u_xlat5.x = (x_527 + x_529);
  let x_533 : f32 = u_xlat2.x;
  u_xlat10.x = (x_533 + 0.0001f);
  let x_537 : f32 = u_xlat0.x;
  let x_539 : f32 = u_xlat10.x;
  u_xlat1.x = (x_537 / x_539);
  u_xlat1.y = 0.25f;
  u_xlat11.y = 0.25f;
  let x_547 : vec4<f32> = u_xlat1;
  let x_549 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, vec2<f32>(x_547.x, x_547.y), 0.0f);
  u_xlat0.x = x_549.z;
  let x_555 : vec2<f32> = u_xlat11;
  let x_556 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_555, 0.0f);
  u_xlat0.z = x_556.w;
  let x_559 : vec4<f32> = u_xlat0;
  let x_560 : vec2<f32> = vec2<f32>(x_559.x, x_559.z);
  let x_561 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_560.x, x_561.y, x_560.y, x_561.w);
  let x_563 : vec4<f32> = u_xlat0;
  let x_567 : vec2<f32> = clamp(vec2<f32>(x_563.x, x_563.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_568 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_567.x, x_568.y, x_567.y, x_568.w);
  let x_570 : vec4<f32> = u_xlat0;
  let x_572 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(vec2<f32>(x_570.x, x_570.x), vec2<f32>(x_572.x, x_572.x));
  let x_577 : f32 = u_xlat0.x;
  let x_579 : f32 = u_xlat0.z;
  u_xlat0.x = (x_577 * x_579);
  let x_583 : vec3<f32> = x_13.x_HueSatCon;
  let x_585 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_583.y, x_583.y), vec2<f32>(x_585.x, x_585.x));
  u_xlat3.y = 0.25f;
  let x_593 : vec4<f32> = u_xlat3;
  let x_595 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, vec2<f32>(x_593.x, x_593.y), 0.0f);
  u_xlat5.x = x_595.x;
  let x_599 : f32 = u_xlat5.x;
  u_xlat5.x = x_599;
  let x_602 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_602, 0.0f, 1.0f);
  let x_606 : f32 = u_xlat3.x;
  let x_608 : f32 = u_xlat5.x;
  u_xlat5.x = (x_606 + x_608);
  let x_611 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_611.x, x_611.x, x_611.x) + vec3<f32>(-0.5f, 0.5f, -1.5f));
  let x_619 : f32 = u_xlat5.x;
  u_xlatb6 = (1.0f < x_619);
  let x_622 : bool = u_xlatb6;
  if (x_622) {
    let x_628 : f32 = u_xlat5.z;
    x_624 = x_628;
  } else {
    let x_631 : f32 = u_xlat5.x;
    x_624 = x_631;
  }
  let x_632 : f32 = x_624;
  u_xlat15 = x_632;
  let x_635 : f32 = u_xlat5.x;
  u_xlatb5 = (x_635 < 0.0f);
  let x_637 : bool = u_xlatb5;
  if (x_637) {
    let x_642 : f32 = u_xlat5.y;
    x_638 = x_642;
  } else {
    let x_644 : f32 = u_xlat15;
    x_638 = x_644;
  }
  let x_645 : f32 = x_638;
  u_xlat5.x = x_645;
  let x_647 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_647.x, x_647.x, x_647.x) + vec3<f32>(1.0f, 0.666666687f, 0.333333343f));
  let x_652 : vec3<f32> = u_xlat5;
  u_xlat5 = fract(x_652);
  let x_654 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_654 * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_660 : vec3<f32> = u_xlat5;
  u_xlat5 = (abs(x_660) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_663 : vec3<f32> = u_xlat5;
  u_xlat5 = clamp(x_663, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_667 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_667 + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_669 : vec4<f32> = u_xlat1;
  let x_671 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_669.x, x_669.x, x_669.x) * x_671) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_675 : vec3<f32> = u_xlat5;
  let x_676 : vec4<f32> = u_xlat2;
  let x_678 : vec3<f32> = (x_675 * vec3<f32>(x_676.x, x_676.x, x_676.x));
  let x_679 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_681.x, x_681.y, x_681.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_685 : vec4<f32> = u_xlat2;
  let x_687 : vec3<f32> = u_xlat5;
  let x_689 : vec4<f32> = u_xlat1;
  u_xlat5 = ((vec3<f32>(x_685.x, x_685.x, x_685.x) * x_687) + -(vec3<f32>(x_689.x, x_689.x, x_689.x)));
  let x_693 : vec4<f32> = u_xlat0;
  let x_695 : vec3<f32> = u_xlat5;
  let x_697 : vec4<f32> = u_xlat1;
  let x_699 : vec3<f32> = ((vec3<f32>(x_693.x, x_693.x, x_693.x) * x_695) + vec3<f32>(x_697.x, x_697.x, x_697.x));
  let x_700 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat0;
  let x_706 : vec3<f32> = clamp(vec3<f32>(x_702.x, x_702.y, x_702.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_707 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat0;
  let x_713 : vec3<f32> = (vec3<f32>(x_709.x, x_709.y, x_709.z) + vec3<f32>(0.00390625f, 0.00390625f, 0.00390625f));
  let x_714 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  u_xlat0.w = 0.75f;
  let x_721 : vec4<f32> = u_xlat0;
  let x_723 : vec4<f32> = textureSample(x_Curves, sampler_Curves, vec2<f32>(x_721.x, x_721.w));
  u_xlat1.x = x_723.w;
  let x_727 : f32 = u_xlat1.x;
  u_xlat1.x = x_727;
  let x_730 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_730, 0.0f, 1.0f);
  let x_736 : vec4<f32> = u_xlat0;
  let x_738 : vec4<f32> = textureSample(x_Curves, sampler_Curves, vec2<f32>(x_736.y, x_736.w));
  u_xlat6.x = x_738.w;
  let x_744 : vec4<f32> = u_xlat0;
  let x_746 : vec4<f32> = textureSample(x_Curves, sampler_Curves, vec2<f32>(x_744.z, x_744.w));
  u_xlat6.y = x_746.w;
  let x_749 : vec2<f32> = u_xlat6;
  let x_750 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_750.x, x_749.x, x_749.y, x_750.w);
  let x_752 : vec4<f32> = u_xlat1;
  let x_756 : vec2<f32> = clamp(vec2<f32>(x_752.y, x_752.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_757 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_757.x, x_756.x, x_756.y, x_757.w);
  let x_759 : vec4<f32> = u_xlat1;
  let x_761 : vec3<f32> = (vec3<f32>(x_759.x, x_759.y, x_759.z) + vec3<f32>(0.00390625f, 0.00390625f, 0.00390625f));
  let x_762 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  u_xlat0.w = 0.75f;
  let x_768 : vec4<f32> = u_xlat0;
  let x_770 : vec4<f32> = textureSample(x_Curves, sampler_Curves, vec2<f32>(x_768.x, x_768.w));
  u_xlat0.x = x_770.x;
  let x_776 : f32 = u_xlat0.x;
  SV_Target0.x = x_776;
  let x_780 : f32 = SV_Target0.x;
  SV_Target0.x = clamp(x_780, 0.0f, 1.0f);
  let x_786 : vec4<f32> = u_xlat0;
  let x_788 : vec4<f32> = textureSample(x_Curves, sampler_Curves, vec2<f32>(x_786.y, x_786.w));
  u_xlat0.x = x_788.y;
  let x_794 : vec4<f32> = u_xlat0;
  let x_796 : vec4<f32> = textureSample(x_Curves, sampler_Curves, vec2<f32>(x_794.z, x_794.w));
  u_xlat0.y = x_796.z;
  let x_799 : vec4<f32> = u_xlat0;
  let x_800 : vec2<f32> = vec2<f32>(x_799.x, x_799.y);
  let x_801 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_801.x, x_800.x, x_800.y, x_801.w);
  let x_803 : vec4<f32> = SV_Target0;
  let x_807 : vec2<f32> = clamp(vec2<f32>(x_803.y, x_803.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_808 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_808.x, x_807.x, x_807.y, x_808.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

