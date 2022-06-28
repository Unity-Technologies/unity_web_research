struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_SpecColor : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_FaceUVSpeedX : f32,
  x_FaceUVSpeedY : f32,
  @size(8)
  padding_3 : u32,
  x_FaceColor : vec4<f32>,
  x_OutlineSoftness : f32,
  x_OutlineUVSpeedX : f32,
  x_OutlineUVSpeedY : f32,
  @size(4)
  padding_4 : u32,
  x_OutlineColor : vec4<f32>,
  x_OutlineWidth : f32,
  x_Bevel : f32,
  x_BevelOffset : f32,
  x_BevelWidth : f32,
  x_BevelClamp : f32,
  x_BevelRoundness : f32,
  x_BumpOutline : f32,
  x_BumpFace : f32,
  x_ShaderFlags : f32,
  x_ScaleRatioA : f32,
  x_TextureWidth : f32,
  x_TextureHeight : f32,
  x_GradientScale : f32,
  x_FaceShininess : f32,
  x_OutlineShininess : f32,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat22 : f32;

var<private> vs_TEXCOORD6 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_FaceTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(3) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_OutlineTex : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb10 : bool;

var<private> u_xlatb3 : bool;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat24 : f32;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

var<private> u_xlatb24 : bool;

var<private> u_xlat25 : f32;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_362 : f32;
  var x_762 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD5;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_31);
  let x_33 : f32 = u_xlat21;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_38 : vec3<f32> = vs_TEXCOORD5;
  let x_43 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_38) + x_43);
  let x_45 : vec3<f32> = u_xlat1;
  let x_46 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_48);
  let x_58 : f32 = x_18.x_TextureWidth;
  let x_61 : f32 = x_18.x_TextureHeight;
  let x_63 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_58, x_61));
  let x_64 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_63.x, x_63.y, x_64.z, x_64.w);
  u_xlat2.z = 0.0f;
  let x_71 : vec4<f32> = u_xlat2;
  let x_76 : vec4<f32> = vs_TEXCOORD0;
  u_xlat3 = (-(vec4<f32>(x_71.x, x_71.z, x_71.z, x_71.y)) + vec4<f32>(x_76.x, x_76.y, x_76.x, x_76.y));
  let x_90 : vec4<f32> = u_xlat3;
  let x_92 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_90.x, x_90.y));
  u_xlat4.x = x_92.w;
  let x_97 : vec4<f32> = u_xlat2;
  let x_99 : vec4<f32> = vs_TEXCOORD0;
  u_xlat2 = (vec4<f32>(x_97.x, x_97.z, x_97.z, x_97.y) + vec4<f32>(x_99.x, x_99.y, x_99.x, x_99.y));
  let x_105 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_105.x, x_105.y));
  u_xlat4.y = x_107.w;
  let x_114 : vec4<f32> = u_xlat3;
  let x_116 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_114.z, x_114.w));
  u_xlat4.z = x_116.w;
  let x_122 : vec4<f32> = u_xlat2;
  let x_124 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_122.z, x_122.w));
  u_xlat4.w = x_124.w;
  let x_131 : vec4<f32> = vs_TEXCOORD0;
  let x_133 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_131.x, x_131.y));
  u_xlat22 = x_133.w;
  let x_135 : f32 = u_xlat22;
  u_xlat22 = (-(x_135) + 0.5f);
  let x_139 : f32 = u_xlat22;
  let x_144 : f32 = vs_TEXCOORD6.x;
  u_xlat22 = (x_139 + -(x_144));
  let x_147 : f32 = u_xlat22;
  let x_149 : f32 = vs_TEXCOORD6.y;
  u_xlat22 = ((x_147 * x_149) + 0.5f);
  let x_154 : f32 = x_18.x_OutlineWidth;
  let x_157 : f32 = x_18.x_ScaleRatioA;
  u_xlat2.x = (x_154 * x_157);
  let x_162 : f32 = x_18.x_OutlineSoftness;
  let x_164 : f32 = x_18.x_ScaleRatioA;
  u_xlat2.y = (x_162 * x_164);
  let x_167 : vec4<f32> = u_xlat2;
  let x_169 : vec2<f32> = vs_TEXCOORD6;
  let x_171 : vec2<f32> = (vec2<f32>(x_167.x, x_167.y) * vec2<f32>(x_169.y, x_169.y));
  let x_172 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_171.x, x_172.y, x_171.y, x_172.w);
  let x_175 : vec4<f32> = vs_COLOR0;
  let x_178 : vec4<f32> = x_18.x_FaceColor;
  u_xlat3 = (x_175 * x_178);
  let x_182 : f32 = vs_COLOR0.w;
  let x_185 : f32 = x_18.x_OutlineColor.w;
  u_xlat23 = (x_182 * x_185);
  let x_190 : f32 = x_18.x_FaceUVSpeedX;
  let x_193 : f32 = x_18.x_FaceUVSpeedY;
  let x_197 : vec4<f32> = x_18.x_Time;
  let x_200 : vec4<f32> = vs_TEXCOORD0;
  let x_202 : vec2<f32> = ((vec2<f32>(x_190, x_193) * vec2<f32>(x_197.y, x_197.y)) + vec2<f32>(x_200.z, x_200.w));
  let x_203 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_202.x, x_202.y, x_203.z, x_203.w);
  let x_210 : vec4<f32> = u_xlat5;
  let x_212 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, vec2<f32>(x_210.x, x_210.y));
  u_xlat5 = x_212;
  let x_213 : vec4<f32> = u_xlat3;
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_213 * x_214);
  let x_218 : f32 = x_18.x_OutlineUVSpeedX;
  let x_221 : f32 = x_18.x_OutlineUVSpeedY;
  let x_224 : vec4<f32> = x_18.x_Time;
  let x_228 : vec2<f32> = vs_TEXCOORD1;
  let x_229 : vec2<f32> = ((vec2<f32>(x_218, x_221) * vec2<f32>(x_224.y, x_224.y)) + x_228);
  let x_230 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_229.x, x_229.y, x_230.z, x_230.w);
  let x_237 : vec4<f32> = u_xlat5;
  let x_239 : vec4<f32> = textureSample(x_OutlineTex, sampler_OutlineTex, vec2<f32>(x_237.x, x_237.y));
  u_xlat5 = x_239;
  let x_240 : vec4<f32> = u_xlat5;
  let x_243 : vec4<f32> = x_18.x_OutlineColor;
  let x_245 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_249 : f32 = u_xlat23;
  let x_251 : f32 = u_xlat5.w;
  u_xlat6.w = (x_249 * x_251);
  let x_255 : f32 = u_xlat2.x;
  let x_258 : f32 = u_xlat22;
  u_xlat23 = ((-(x_255) * 0.5f) + x_258);
  let x_262 : f32 = u_xlat2.z;
  let x_264 : f32 = u_xlat23;
  u_xlat16 = ((x_262 * 0.5f) + x_264);
  let x_268 : f32 = u_xlat2.y;
  let x_270 : f32 = vs_TEXCOORD6.y;
  u_xlat9 = ((x_268 * x_270) + 1.0f);
  let x_273 : f32 = u_xlat16;
  let x_274 : f32 = u_xlat9;
  u_xlat9 = (x_273 / x_274);
  let x_276 : f32 = u_xlat9;
  u_xlat9 = clamp(x_276, 0.0f, 1.0f);
  let x_278 : f32 = u_xlat9;
  u_xlat9 = (-(x_278) + 1.0f);
  let x_282 : f32 = u_xlat2.x;
  let x_284 : f32 = u_xlat22;
  u_xlat22 = ((x_282 * 0.5f) + x_284);
  let x_286 : f32 = u_xlat22;
  u_xlat22 = clamp(x_286, 0.0f, 1.0f);
  let x_289 : f32 = u_xlat2.x;
  u_xlat2.x = min(x_289, 1.0f);
  let x_293 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_293);
  let x_296 : f32 = u_xlat22;
  let x_298 : f32 = u_xlat2.x;
  u_xlat2.x = (x_296 * x_298);
  let x_301 : vec4<f32> = u_xlat3;
  let x_303 : vec4<f32> = u_xlat3;
  let x_305 : vec3<f32> = (vec3<f32>(x_301.w, x_301.w, x_301.w) * vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat5;
  let x_310 : vec4<f32> = u_xlat6;
  let x_312 : vec3<f32> = (vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_310.w, x_310.w, x_310.w));
  let x_313 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec4<f32> = u_xlat3;
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat5 = (-(x_315) + x_317);
  let x_319 : vec4<f32> = u_xlat2;
  let x_321 : vec4<f32> = u_xlat5;
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_319.x, x_319.x, x_319.x, x_319.x) * x_321) + x_323);
  let x_325 : f32 = u_xlat9;
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_325, x_325, x_325, x_325) * x_327);
  let x_330 : f32 = u_xlat2.w;
  u_xlat3.x = max(x_330, 0.0001f);
  let x_334 : vec4<f32> = u_xlat2;
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : vec3<f32> = (vec3<f32>(x_334.x, x_334.y, x_334.z) / vec3<f32>(x_336.x, x_336.x, x_336.x));
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_343 : f32 = x_18.x_ShaderFlags;
  u_xlat3.x = (x_343 * 0.5f);
  let x_350 : f32 = u_xlat3.x;
  let x_352 : f32 = u_xlat3.x;
  u_xlatb10 = (x_350 >= -(x_352));
  let x_356 : f32 = u_xlat3.x;
  u_xlat3.x = fract(abs(x_356));
  let x_360 : bool = u_xlatb10;
  if (x_360) {
    let x_366 : f32 = u_xlat3.x;
    x_362 = x_366;
  } else {
    let x_369 : f32 = u_xlat3.x;
    x_362 = -(x_369);
  }
  let x_371 : f32 = x_362;
  u_xlat3.x = x_371;
  let x_375 : f32 = u_xlat3.x;
  u_xlatb3 = (x_375 >= 0.5f);
  let x_380 : f32 = vs_TEXCOORD6.x;
  let x_383 : f32 = x_18.x_BevelOffset;
  u_xlat10.x = (x_380 + x_383);
  let x_386 : vec2<f32> = u_xlat10;
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_386.x, x_386.x, x_386.x, x_386.x) + x_388);
  let x_392 : f32 = x_18.x_BevelWidth;
  let x_394 : f32 = x_18.x_OutlineWidth;
  u_xlat10.x = (x_392 + x_394);
  let x_398 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_398, 0.01f);
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_402 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_406 : vec4<f32> = u_xlat4;
  let x_407 : vec2<f32> = u_xlat10;
  u_xlat4 = (x_406 / vec4<f32>(x_407.x, x_407.x, x_407.x, x_407.x));
  let x_410 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_410 + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_413 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_413, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_417 : vec4<f32> = u_xlat4;
  u_xlat5 = ((x_417 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_424 : vec4<f32> = u_xlat5;
  u_xlat5 = (-(abs(x_424)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_429 : bool = u_xlatb3;
  let x_430 : vec4<f32> = u_xlat5;
  let x_431 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_431, x_430, vec4<bool>(x_429, x_429, x_429, x_429));
  let x_435 : vec4<f32> = u_xlat4;
  u_xlat5 = (x_435 * vec4<f32>(1.570796013f, 1.570796013f, 1.570796013f, 1.570796013f));
  let x_439 : vec4<f32> = u_xlat5;
  u_xlat5 = sin(x_439);
  let x_441 : vec4<f32> = u_xlat4;
  let x_443 : vec4<f32> = u_xlat5;
  u_xlat5 = (-(x_441) + x_443);
  let x_447 : f32 = x_18.x_BevelRoundness;
  let x_449 : f32 = x_18.x_BevelRoundness;
  let x_451 : f32 = x_18.x_BevelRoundness;
  let x_453 : f32 = x_18.x_BevelRoundness;
  let x_454 : vec4<f32> = vec4<f32>(x_447, x_449, x_451, x_453);
  let x_460 : vec4<f32> = u_xlat5;
  let x_462 : vec4<f32> = u_xlat4;
  u_xlat4 = ((vec4<f32>(x_454.x, x_454.y, x_454.z, x_454.w) * x_460) + x_462);
  let x_466 : f32 = x_18.x_BevelClamp;
  u_xlat3.x = (-(x_466) + 1.0f);
  let x_470 : vec4<f32> = u_xlat3;
  let x_472 : vec4<f32> = u_xlat4;
  u_xlat4 = min(vec4<f32>(x_470.x, x_470.x, x_470.x, x_470.x), x_472);
  let x_475 : f32 = u_xlat10.x;
  let x_478 : f32 = x_18.x_Bevel;
  u_xlat3.x = (x_475 * x_478);
  let x_482 : f32 = u_xlat3.x;
  let x_485 : f32 = x_18.x_GradientScale;
  u_xlat3.x = (x_482 * x_485);
  let x_489 : f32 = u_xlat3.x;
  u_xlat3.x = (x_489 * -2.0f);
  let x_493 : vec4<f32> = u_xlat3;
  let x_495 : vec4<f32> = u_xlat4;
  u_xlat10 = (vec2<f32>(x_493.x, x_493.x) * vec2<f32>(x_495.x, x_495.z));
  let x_498 : vec4<f32> = u_xlat4;
  let x_500 : vec4<f32> = u_xlat3;
  let x_503 : vec2<f32> = u_xlat10;
  let x_506 : vec2<f32> = ((vec2<f32>(x_498.w, x_498.y) * vec2<f32>(x_500.x, x_500.x)) + -(vec2<f32>(x_503.y, x_503.x)));
  let x_507 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_507.x, x_506.x, x_506.y, x_507.w);
  u_xlat3.x = -1.0f;
  u_xlat3.w = 1.0f;
  let x_512 : vec4<f32> = u_xlat3;
  let x_514 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec2<f32>(x_512.z, x_512.w), vec2<f32>(x_514.z, x_514.w));
  let x_517 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_517);
  let x_519 : f32 = u_xlat24;
  let x_522 : vec2<f32> = (vec2<f32>(x_519, x_519) * vec2<f32>(1.0f, 0.0f));
  let x_523 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_523.x, x_522.x, x_522.y, x_523.w);
  let x_525 : f32 = u_xlat24;
  let x_527 : f32 = u_xlat3.z;
  u_xlat4.x = (x_525 * x_527);
  let x_530 : vec4<f32> = u_xlat3;
  let x_532 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec2<f32>(x_530.x, x_530.y), vec2<f32>(x_532.x, x_532.y));
  let x_535 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_535);
  u_xlat3.z = 0.0f;
  let x_538 : f32 = u_xlat24;
  let x_540 : vec4<f32> = u_xlat3;
  let x_542 : vec3<f32> = (vec3<f32>(x_538, x_538, x_538) * vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec4<f32> = u_xlat3;
  let x_547 : vec4<f32> = u_xlat4;
  let x_549 : vec3<f32> = (vec3<f32>(x_545.x, x_545.y, x_545.z) * vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_550 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_552 : vec4<f32> = u_xlat4;
  let x_554 : vec4<f32> = u_xlat3;
  let x_557 : vec4<f32> = u_xlat5;
  let x_560 : vec3<f32> = ((vec3<f32>(x_552.z, x_552.x, x_552.y) * vec3<f32>(x_554.y, x_554.z, x_554.x)) + -(vec3<f32>(x_557.x, x_557.y, x_557.z)));
  let x_561 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_568 : vec4<f32> = vs_TEXCOORD0;
  let x_570 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_568.z, x_568.w));
  let x_571 : vec3<f32> = vec3<f32>(x_570.x, x_570.y, x_570.w);
  let x_572 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_575 : f32 = u_xlat4.z;
  let x_577 : f32 = u_xlat4.x;
  u_xlat4.x = (x_575 * x_577);
  let x_580 : vec4<f32> = u_xlat4;
  let x_585 : vec2<f32> = ((vec2<f32>(x_580.x, x_580.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_586 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
  let x_588 : vec4<f32> = u_xlat4;
  let x_590 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(vec2<f32>(x_588.x, x_588.y), vec2<f32>(x_590.x, x_590.y));
  let x_593 : f32 = u_xlat24;
  u_xlat24 = min(x_593, 1.0f);
  let x_595 : f32 = u_xlat24;
  u_xlat24 = (-(x_595) + 1.0f);
  let x_598 : f32 = u_xlat24;
  u_xlat4.z = sqrt(x_598);
  let x_603 : f32 = x_18.x_BumpFace;
  let x_607 : f32 = x_18.x_BumpOutline;
  u_xlat24 = (-(x_603) + x_607);
  let x_609 : f32 = u_xlat22;
  let x_610 : f32 = u_xlat24;
  let x_613 : f32 = x_18.x_BumpFace;
  u_xlat24 = ((x_609 * x_610) + x_613);
  let x_615 : vec4<f32> = u_xlat4;
  let x_617 : f32 = u_xlat24;
  let x_622 : vec3<f32> = ((vec3<f32>(x_615.x, x_615.y, x_615.z) * vec3<f32>(x_617, x_617, x_617)) + vec3<f32>(-0.0f, -0.0f, -1.0f));
  let x_623 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat2;
  let x_627 : vec4<f32> = u_xlat4;
  let x_631 : vec3<f32> = ((vec3<f32>(x_625.w, x_625.w, x_625.w) * vec3<f32>(x_627.x, x_627.y, x_627.z)) + vec3<f32>(0.0f, 0.0f, 1.0f));
  let x_632 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : vec4<f32> = u_xlat3;
  let x_636 : vec4<f32> = u_xlat4;
  let x_639 : vec3<f32> = (vec3<f32>(x_634.x, x_634.y, x_634.z) + -(vec3<f32>(x_636.x, x_636.y, x_636.z)));
  let x_640 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec4<f32> = u_xlat3;
  let x_644 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_642.x, x_642.y, x_642.z), vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_647);
  let x_649 : f32 = u_xlat24;
  let x_651 : vec4<f32> = u_xlat3;
  let x_653 : vec3<f32> = (vec3<f32>(x_649, x_649, x_649) * vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_654 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_658 : f32 = x_18.x_FaceShininess;
  let x_662 : f32 = x_18.x_OutlineShininess;
  u_xlat24 = (-(x_658) + x_662);
  let x_664 : f32 = u_xlat22;
  let x_665 : f32 = u_xlat24;
  let x_668 : f32 = x_18.x_FaceShininess;
  u_xlat22 = ((x_664 * x_665) + x_668);
  let x_670 : vec3<f32> = vs_TEXCOORD5;
  let x_674 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_676 : vec3<f32> = (vec3<f32>(x_670.y, x_670.y, x_670.y) * vec3<f32>(x_674.x, x_674.y, x_674.z));
  let x_677 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_680 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_682 : vec3<f32> = vs_TEXCOORD5;
  let x_685 : vec4<f32> = u_xlat4;
  let x_687 : vec3<f32> = ((vec3<f32>(x_680.x, x_680.y, x_680.z) * vec3<f32>(x_682.x, x_682.x, x_682.x)) + vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_688 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_691 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_693 : vec3<f32> = vs_TEXCOORD5;
  let x_696 : vec4<f32> = u_xlat4;
  let x_698 : vec3<f32> = ((vec3<f32>(x_691.x, x_691.y, x_691.z) * vec3<f32>(x_693.z, x_693.z, x_693.z)) + vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat4;
  let x_705 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_707 : vec3<f32> = (vec3<f32>(x_701.x, x_701.y, x_701.z) + vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_713 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb24 = (x_713 == 1.0f);
  let x_715 : bool = u_xlatb24;
  if (x_715) {
    let x_719 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb24 = (x_719 == 1.0f);
    let x_721 : vec3<f32> = vs_TEXCOORD5;
    let x_725 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_727 : vec3<f32> = (vec3<f32>(x_721.y, x_721.y, x_721.y) * vec3<f32>(x_725.x, x_725.y, x_725.z));
    let x_728 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
    let x_731 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_733 : vec3<f32> = vs_TEXCOORD5;
    let x_736 : vec4<f32> = u_xlat5;
    let x_738 : vec3<f32> = ((vec3<f32>(x_731.x, x_731.y, x_731.z) * vec3<f32>(x_733.x, x_733.x, x_733.x)) + vec3<f32>(x_736.x, x_736.y, x_736.z));
    let x_739 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
    let x_742 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_744 : vec3<f32> = vs_TEXCOORD5;
    let x_747 : vec4<f32> = u_xlat5;
    let x_749 : vec3<f32> = ((vec3<f32>(x_742.x, x_742.y, x_742.z) * vec3<f32>(x_744.z, x_744.z, x_744.z)) + vec3<f32>(x_747.x, x_747.y, x_747.z));
    let x_750 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
    let x_752 : vec4<f32> = u_xlat5;
    let x_755 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_757 : vec3<f32> = (vec3<f32>(x_752.x, x_752.y, x_752.z) + vec3<f32>(x_755.x, x_755.y, x_755.z));
    let x_758 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
    let x_760 : bool = u_xlatb24;
    if (x_760) {
      let x_765 : vec4<f32> = u_xlat5;
      x_762 = vec3<f32>(x_765.x, x_765.y, x_765.z);
    } else {
      let x_768 : vec3<f32> = vs_TEXCOORD5;
      x_762 = x_768;
    }
    let x_769 : vec3<f32> = x_762;
    let x_770 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
    let x_772 : vec4<f32> = u_xlat5;
    let x_776 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_778 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) + -(x_776));
    let x_779 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
    let x_781 : vec4<f32> = u_xlat5;
    let x_785 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_786 : vec3<f32> = (vec3<f32>(x_781.x, x_781.y, x_781.z) * x_785);
    let x_787 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_787.x, x_786.x, x_786.y, x_786.z);
    let x_790 : f32 = u_xlat5.y;
    u_xlat24 = ((x_790 * 0.25f) + 0.75f);
    let x_797 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat25 = ((x_797 * 0.5f) + 0.75f);
    let x_800 : f32 = u_xlat24;
    let x_801 : f32 = u_xlat25;
    u_xlat5.x = max(x_800, x_801);
    let x_812 : vec4<f32> = u_xlat5;
    let x_814 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_812.x, x_812.z, x_812.w));
    u_xlat5 = x_814;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_820 : vec4<f32> = u_xlat5;
  let x_822 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat24 = dot(x_820, x_822);
  let x_824 : f32 = u_xlat24;
  u_xlat24 = clamp(x_824, 0.0f, 1.0f);
  let x_826 : vec4<f32> = u_xlat4;
  let x_828 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_826.x, x_826.y, x_826.z), vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_837 : vec4<f32> = u_xlat4;
  let x_839 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_837.x, x_837.x));
  u_xlat4.x = x_839.x;
  let x_842 : f32 = u_xlat24;
  let x_844 : f32 = u_xlat4.x;
  u_xlat24 = (x_842 * x_844);
  let x_847 : vec3<f32> = vs_TEXCOORD2;
  let x_848 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_847, -(vec3<f32>(x_848.x, x_848.y, x_848.z)));
  let x_854 : vec3<f32> = vs_TEXCOORD3;
  let x_855 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_854, -(vec3<f32>(x_855.x, x_855.y, x_855.z)));
  let x_861 : vec3<f32> = vs_TEXCOORD4;
  let x_862 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_861, -(vec3<f32>(x_862.x, x_862.y, x_862.z)));
  let x_867 : vec4<f32> = u_xlat4;
  let x_869 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(vec3<f32>(x_867.x, x_867.y, x_867.z), vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_874 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_874);
  let x_877 : vec4<f32> = u_xlat3;
  let x_879 : vec4<f32> = u_xlat4;
  let x_881 : vec3<f32> = (vec3<f32>(x_877.x, x_877.x, x_877.x) * vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : f32 = u_xlat24;
  let x_888 : vec4<f32> = x_18.x_LightColor0;
  let x_890 : vec3<f32> = (vec3<f32>(x_884, x_884, x_884) * vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_893 : vec3<f32> = u_xlat1;
  let x_894 : f32 = u_xlat21;
  let x_897 : vec3<f32> = u_xlat0;
  u_xlat1 = ((x_893 * vec3<f32>(x_894, x_894, x_894)) + x_897);
  let x_899 : vec3<f32> = u_xlat1;
  let x_900 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_899, x_900);
  let x_902 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_902);
  let x_904 : f32 = u_xlat21;
  let x_906 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_904, x_904, x_904) * x_906);
  let x_908 : vec4<f32> = u_xlat3;
  let x_910 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_908.x, x_908.y, x_908.z), x_910);
  let x_913 : vec4<f32> = u_xlat3;
  let x_915 : vec3<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(x_913.x, x_913.y, x_913.z), x_915);
  let x_918 : vec3<f32> = u_xlat0;
  let x_921 : vec2<f32> = max(vec2<f32>(x_918.x, x_918.y), vec2<f32>(0.0f, 0.0f));
  let x_922 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_921.x, x_921.y, x_922.z);
  let x_925 : f32 = u_xlat22;
  u_xlat14 = (x_925 * 128.0f);
  let x_930 : f32 = u_xlat0.y;
  u_xlat7.x = log2(x_930);
  let x_934 : f32 = u_xlat7.x;
  let x_935 : f32 = u_xlat14;
  u_xlat7.x = (x_934 * x_935);
  let x_939 : f32 = u_xlat7.x;
  u_xlat7.x = exp2(x_939);
  let x_942 : vec4<f32> = u_xlat2;
  let x_944 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_942.x, x_942.y, x_942.z) * vec3<f32>(x_944.x, x_944.y, x_944.z));
  let x_947 : vec4<f32> = u_xlat4;
  let x_951 : vec4<f32> = x_18.x_SpecColor;
  let x_953 : vec3<f32> = (vec3<f32>(x_947.x, x_947.y, x_947.z) * vec3<f32>(x_951.x, x_951.y, x_951.z));
  let x_954 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
  let x_956 : vec3<f32> = u_xlat7;
  let x_958 : vec4<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_956.x, x_956.x, x_956.x) * vec3<f32>(x_958.x, x_958.y, x_958.z));
  let x_963 : vec3<f32> = u_xlat1;
  let x_964 : vec3<f32> = u_xlat0;
  let x_967 : vec3<f32> = u_xlat7;
  let x_968 : vec3<f32> = ((x_963 * vec3<f32>(x_964.x, x_964.x, x_964.x)) + x_967);
  let x_969 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
  let x_972 : f32 = u_xlat2.w;
  SV_Target0.w = x_972;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_TEXCOORD5_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD6_param : vec2<f32>, @location(7) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

