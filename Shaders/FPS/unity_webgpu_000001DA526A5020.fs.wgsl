struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(6) var sampler_Lut2D : sampler;

var<private> u_xlat4 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_230 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_45 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_48.x, x_48.y, x_49.z, x_49.w);
  let x_51 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_56.x, x_56.y, x_57.z, x_57.w);
  let x_60 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_70);
  let x_80 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb6 = (0.0f < x_80);
  let x_82 : bool = u_xlatb6;
  if (x_82) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat6.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat6.y;
    u_xlat11.x = (1.0f / x_115);
    let x_119 : f32 = u_xlat6.x;
    let x_121 : f32 = u_xlat11.x;
    u_xlat6.x = ((x_119 * x_121) + -1.0f);
    let x_126 : vec4<f32> = u_xlat0;
    let x_128 : vec3<f32> = u_xlat6;
    let x_131 : vec2<f32> = u_xlat10;
    let x_132 : vec2<f32> = ((vec2<f32>(x_126.x, x_126.y) * vec2<f32>(x_128.x, x_128.x)) + x_131);
    let x_133 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_132.x, x_132.y, x_133.z);
  } else {
    let x_138 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_138);
    let x_140 : f32 = u_xlat16;
    let x_142 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat16 = (x_140 * x_142);
    let x_145 : f32 = u_xlat1.x;
    let x_147 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_145 * x_147);
    let x_151 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_151), 1.0f);
    let x_157 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_157), 1.0f);
    let x_160 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_160);
    let x_162 : f32 = u_xlat7;
    let x_164 : f32 = u_xlat2.x;
    u_xlat2.x = (x_162 * x_164);
    let x_168 : f32 = u_xlat2.x;
    let x_170 : f32 = u_xlat2.x;
    u_xlat7 = (x_168 * x_170);
    let x_173 : f32 = u_xlat7;
    u_xlat12 = ((x_173 * 0.0208351f) + -0.085133001f);
    let x_178 : f32 = u_xlat7;
    let x_179 : f32 = u_xlat12;
    u_xlat12 = ((x_178 * x_179) + 0.180141002f);
    let x_183 : f32 = u_xlat7;
    let x_184 : f32 = u_xlat12;
    u_xlat12 = ((x_183 * x_184) + -0.330299497f);
    let x_188 : f32 = u_xlat7;
    let x_189 : f32 = u_xlat12;
    u_xlat7 = ((x_188 * x_189) + 0.999866009f);
    let x_193 : f32 = u_xlat7;
    let x_195 : f32 = u_xlat2.x;
    u_xlat12 = (x_193 * x_195);
    let x_199 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_199));
    let x_202 : f32 = u_xlat12;
    u_xlat12 = ((x_202 * -2.0f) + 1.570796371f);
    let x_207 : bool = u_xlatb17;
    let x_208 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_208, x_207);
    let x_211 : f32 = u_xlat2.x;
    let x_212 : f32 = u_xlat7;
    let x_214 : f32 = u_xlat12;
    u_xlat2.x = ((x_211 * x_212) + x_214);
    let x_218 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_218, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1 = (x_223 < -(x_225));
    let x_228 : bool = u_xlatb1;
    if (x_228) {
      let x_234 : f32 = u_xlat2.x;
      x_230 = -(x_234);
    } else {
      let x_238 : f32 = u_xlat2.x;
      x_230 = x_238;
    }
    let x_239 : f32 = x_230;
    u_xlat1.x = x_239;
    let x_241 : f32 = u_xlat16;
    let x_243 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_241 * x_243) + -1.0f);
    let x_247 : vec4<f32> = u_xlat0;
    let x_249 : vec4<f32> = u_xlat1;
    let x_252 : vec2<f32> = u_xlat10;
    let x_253 : vec2<f32> = ((vec2<f32>(x_247.x, x_247.y) * vec2<f32>(x_249.x, x_249.x)) + x_252);
    let x_254 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_253.x, x_253.y, x_254.z);
  }
  let x_267 : vec2<f32> = vs_TEXCOORD0;
  let x_268 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_267);
  u_xlat0.x = x_268.x;
  let x_276 : vec3<f32> = u_xlat6;
  let x_278 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_276.x, x_276.y));
  u_xlat1 = x_278;
  let x_279 : vec4<f32> = u_xlat0;
  let x_281 : vec4<f32> = u_xlat1;
  let x_283 : vec3<f32> = (vec3<f32>(x_279.x, x_279.x, x_279.x) * vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat1;
  let x_289 : f32 = x_26.x_PostExposure;
  let x_291 : f32 = x_26.x_PostExposure;
  let x_293 : f32 = x_26.x_PostExposure;
  let x_295 : f32 = x_26.x_PostExposure;
  let x_296 : vec4<f32> = vec4<f32>(x_289, x_291, x_293, x_295);
  u_xlat0 = (x_286 * vec4<f32>(x_296.x, x_296.y, x_296.z, x_296.w));
  let x_303 : vec4<f32> = u_xlat0;
  let x_310 : vec3<f32> = ((vec3<f32>(x_303.z, x_303.x, x_303.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat1;
  let x_315 : vec3<f32> = log2(vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat1;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_326 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat1;
  let x_332 : vec3<f32> = clamp(vec3<f32>(x_328.x, x_328.y, x_328.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_333 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat1;
  let x_340 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_340.z, x_340.z, x_340.z));
  let x_344 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_344);
  let x_348 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_350 : vec2<f32> = (vec2<f32>(x_348.x, x_348.y) * vec2<f32>(0.5f, 0.5f));
  let x_351 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_350.x, x_350.y, x_351.z);
  let x_353 : vec3<f32> = u_xlat6;
  let x_356 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_359 : vec3<f32> = u_xlat2;
  let x_361 : vec2<f32> = ((vec2<f32>(x_353.y, x_353.z) * vec2<f32>(x_356.x, x_356.y)) + vec2<f32>(x_359.x, x_359.y));
  let x_362 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_362.x, x_361.x, x_361.y);
  let x_365 : f32 = u_xlat6.x;
  let x_367 : f32 = x_26.x_Lut2D_Params.y;
  let x_370 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_365 * x_367) + x_370);
  let x_378 : vec3<f32> = u_xlat2;
  let x_380 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_378.x, x_378.z));
  u_xlat3 = vec3<f32>(x_380.x, x_380.y, x_380.z);
  let x_384 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat4.x = x_384;
  u_xlat4.y = 0.0f;
  let x_387 : vec3<f32> = u_xlat2;
  let x_389 : vec2<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_387.x, x_387.z) + x_389);
  let x_394 : vec2<f32> = u_xlat11;
  let x_395 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_394);
  u_xlat2 = vec3<f32>(x_395.x, x_395.y, x_395.z);
  let x_398 : f32 = u_xlat1.x;
  let x_401 : f32 = x_26.x_Lut2D_Params.z;
  let x_404 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_398 * x_401) + -(x_404));
  let x_408 : vec3<f32> = u_xlat3;
  let x_410 : vec3<f32> = u_xlat2;
  u_xlat6 = (-(x_408) + x_410);
  let x_412 : vec4<f32> = u_xlat1;
  let x_414 : vec3<f32> = u_xlat6;
  let x_416 : vec3<f32> = u_xlat3;
  let x_417 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.x, x_412.x) * x_414) + x_416);
  let x_418 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_422 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_422);
  let x_424 : bool = u_xlatb1;
  if (x_424) {
    let x_427 : vec4<f32> = u_xlat0;
    let x_428 : vec3<f32> = vec3<f32>(x_427.x, x_427.y, x_427.z);
    let x_429 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
    let x_431 : vec4<f32> = u_xlat1;
    let x_435 : vec3<f32> = clamp(vec3<f32>(x_431.x, x_431.y, x_431.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_436 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
    let x_438 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_438.x, x_438.y, x_438.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_448 : vec4<f32> = u_xlat0;
  SV_Target0 = x_448;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

