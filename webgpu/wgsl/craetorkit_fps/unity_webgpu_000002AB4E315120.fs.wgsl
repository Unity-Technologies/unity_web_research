struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_LumaInAlpha : f32,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(5) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb6 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat7 : f32;
  var u_xlat12 : f32;
  var u_xlatb17 : bool;
  var u_xlatb1 : bool;
  var x_229 : f32;
  var u_xlat4 : vec2<f32>;
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
      let x_233 : f32 = u_xlat2.x;
      x_229 = -(x_233);
    } else {
      let x_237 : f32 = u_xlat2.x;
      x_229 = x_237;
    }
    let x_238 : f32 = x_229;
    u_xlat1.x = x_238;
    let x_240 : f32 = u_xlat16;
    let x_242 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_240 * x_242) + -1.0f);
    let x_246 : vec4<f32> = u_xlat0;
    let x_248 : vec4<f32> = u_xlat1;
    let x_251 : vec2<f32> = u_xlat10;
    let x_252 : vec2<f32> = ((vec2<f32>(x_246.x, x_246.y) * vec2<f32>(x_248.x, x_248.x)) + x_251);
    let x_253 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_252.x, x_252.y, x_253.z);
  }
  let x_266 : vec2<f32> = vs_TEXCOORD0;
  let x_267 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_266);
  u_xlat0.x = x_267.x;
  let x_275 : vec3<f32> = u_xlat6;
  let x_277 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_275.x, x_275.y));
  u_xlat1 = x_277;
  let x_278 : vec4<f32> = u_xlat0;
  let x_280 : vec4<f32> = u_xlat1;
  let x_282 : vec3<f32> = (vec3<f32>(x_278.x, x_278.x, x_278.x) * vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec4<f32> = u_xlat1;
  let x_288 : f32 = x_26.x_PostExposure;
  let x_290 : f32 = x_26.x_PostExposure;
  let x_292 : f32 = x_26.x_PostExposure;
  let x_294 : f32 = x_26.x_PostExposure;
  let x_295 : vec4<f32> = vec4<f32>(x_288, x_290, x_292, x_294);
  u_xlat0 = (x_285 * vec4<f32>(x_295.x, x_295.y, x_295.z, x_295.w));
  let x_302 : vec4<f32> = u_xlat0;
  let x_309 : vec3<f32> = ((vec3<f32>(x_302.z, x_302.x, x_302.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat1;
  let x_314 : vec3<f32> = log2(vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat1;
  let x_324 : vec3<f32> = ((vec3<f32>(x_317.x, x_317.y, x_317.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_325 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat1;
  let x_331 : vec3<f32> = clamp(vec3<f32>(x_327.x, x_327.y, x_327.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat1;
  let x_339 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(x_339.z, x_339.z, x_339.z));
  let x_343 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_343);
  let x_347 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_349 : vec2<f32> = (vec2<f32>(x_347.x, x_347.y) * vec2<f32>(0.5f, 0.5f));
  let x_350 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_349.x, x_349.y, x_350.z);
  let x_352 : vec3<f32> = u_xlat6;
  let x_355 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_358 : vec3<f32> = u_xlat2;
  let x_360 : vec2<f32> = ((vec2<f32>(x_352.y, x_352.z) * vec2<f32>(x_355.x, x_355.y)) + vec2<f32>(x_358.x, x_358.y));
  let x_361 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_361.x, x_360.x, x_360.y);
  let x_364 : f32 = u_xlat6.x;
  let x_366 : f32 = x_26.x_Lut2D_Params.y;
  let x_369 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_364 * x_366) + x_369);
  let x_377 : vec3<f32> = u_xlat2;
  let x_379 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_377.x, x_377.z));
  u_xlat3 = vec3<f32>(x_379.x, x_379.y, x_379.z);
  let x_383 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat4.x = x_383;
  u_xlat4.y = 0.0f;
  let x_386 : vec3<f32> = u_xlat2;
  let x_388 : vec2<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_386.x, x_386.z) + x_388);
  let x_393 : vec2<f32> = u_xlat11;
  let x_394 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_393);
  u_xlat2 = vec3<f32>(x_394.x, x_394.y, x_394.z);
  let x_397 : f32 = u_xlat1.x;
  let x_400 : f32 = x_26.x_Lut2D_Params.z;
  let x_403 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_397 * x_400) + -(x_403));
  let x_407 : vec3<f32> = u_xlat3;
  let x_409 : vec3<f32> = u_xlat2;
  u_xlat6 = (-(x_407) + x_409);
  let x_411 : vec4<f32> = u_xlat1;
  let x_413 : vec3<f32> = u_xlat6;
  let x_415 : vec3<f32> = u_xlat3;
  let x_416 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.x, x_411.x) * x_413) + x_415);
  let x_417 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_421 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_421);
  let x_423 : bool = u_xlatb1;
  if (x_423) {
    let x_426 : vec4<f32> = u_xlat0;
    let x_427 : vec3<f32> = vec3<f32>(x_426.x, x_426.y, x_426.z);
    let x_428 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
    let x_430 : vec4<f32> = u_xlat1;
    let x_434 : vec3<f32> = clamp(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_435 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
    let x_437 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_437.x, x_437.y, x_437.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_447 : vec4<f32> = u_xlat0;
  SV_Target0 = x_447;
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

