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

@group(0) @binding(14) var sampler_MainTex : sampler;

var<private> u_xlat22 : f32;

var<private> vs_TEXCOORD6 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_FaceTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(3) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_OutlineTex : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb10 : bool;

var<private> u_xlatb3 : bool;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat24 : f32;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BumpMap : sampler;

var<private> u_xlatb24 : bool;

var<private> u_xlat12 : vec2<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb5 : bool;

var<private> u_xlat25 : f32;

@group(0) @binding(5) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

@group(0) @binding(6) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_362 : f32;
  var x_747 : vec3<f32>;
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
  u_xlat4 = (vec4<f32>(x_670.y, x_670.y, x_670.y, x_670.y) * x_674);
  let x_677 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_678 : vec3<f32> = vs_TEXCOORD5;
  let x_681 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_677 * vec4<f32>(x_678.x, x_678.x, x_678.x, x_678.x)) + x_681);
  let x_684 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_685 : vec3<f32> = vs_TEXCOORD5;
  let x_688 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_684 * vec4<f32>(x_685.z, x_685.z, x_685.z, x_685.z)) + x_688);
  let x_690 : vec4<f32> = u_xlat4;
  let x_693 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat4 = (x_690 + x_693);
  let x_698 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb24 = (x_698 == 1.0f);
  let x_700 : bool = u_xlatb24;
  if (x_700) {
    let x_704 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb24 = (x_704 == 1.0f);
    let x_706 : vec3<f32> = vs_TEXCOORD5;
    let x_710 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_712 : vec3<f32> = (vec3<f32>(x_706.y, x_706.y, x_706.y) * vec3<f32>(x_710.x, x_710.y, x_710.z));
    let x_713 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
    let x_716 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_718 : vec3<f32> = vs_TEXCOORD5;
    let x_721 : vec4<f32> = u_xlat5;
    let x_723 : vec3<f32> = ((vec3<f32>(x_716.x, x_716.y, x_716.z) * vec3<f32>(x_718.x, x_718.x, x_718.x)) + vec3<f32>(x_721.x, x_721.y, x_721.z));
    let x_724 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
    let x_727 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_729 : vec3<f32> = vs_TEXCOORD5;
    let x_732 : vec4<f32> = u_xlat5;
    let x_734 : vec3<f32> = ((vec3<f32>(x_727.x, x_727.y, x_727.z) * vec3<f32>(x_729.z, x_729.z, x_729.z)) + vec3<f32>(x_732.x, x_732.y, x_732.z));
    let x_735 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
    let x_737 : vec4<f32> = u_xlat5;
    let x_740 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_742 : vec3<f32> = (vec3<f32>(x_737.x, x_737.y, x_737.z) + vec3<f32>(x_740.x, x_740.y, x_740.z));
    let x_743 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
    let x_745 : bool = u_xlatb24;
    if (x_745) {
      let x_750 : vec4<f32> = u_xlat5;
      x_747 = vec3<f32>(x_750.x, x_750.y, x_750.z);
    } else {
      let x_753 : vec3<f32> = vs_TEXCOORD5;
      x_747 = x_753;
    }
    let x_754 : vec3<f32> = x_747;
    let x_755 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
    let x_757 : vec4<f32> = u_xlat5;
    let x_761 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_763 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) + -(x_761));
    let x_764 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
    let x_766 : vec4<f32> = u_xlat5;
    let x_770 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_771 : vec3<f32> = (vec3<f32>(x_766.x, x_766.y, x_766.z) * x_770);
    let x_772 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_772.x, x_771.x, x_771.y, x_771.z);
    let x_775 : f32 = u_xlat5.y;
    u_xlat24 = ((x_775 * 0.25f) + 0.75f);
    let x_782 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat12.x = ((x_782 * 0.5f) + 0.75f);
    let x_786 : f32 = u_xlat24;
    let x_788 : f32 = u_xlat12.x;
    u_xlat5.x = max(x_786, x_788);
    let x_799 : vec4<f32> = u_xlat5;
    let x_801 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_799.x, x_799.z, x_799.w));
    u_xlat5 = x_801;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_807 : vec4<f32> = u_xlat5;
  let x_809 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat24 = dot(x_807, x_809);
  let x_811 : f32 = u_xlat24;
  u_xlat24 = clamp(x_811, 0.0f, 1.0f);
  let x_815 : f32 = u_xlat4.z;
  u_xlatb5 = (0.0f < x_815);
  let x_817 : bool = u_xlatb5;
  u_xlat5.x = select(0.0f, 1.0f, x_817);
  let x_820 : vec4<f32> = u_xlat4;
  let x_822 : vec4<f32> = u_xlat4;
  u_xlat12 = (vec2<f32>(x_820.x, x_820.y) / vec2<f32>(x_822.w, x_822.w));
  let x_825 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_825 + vec2<f32>(0.5f, 0.5f));
  let x_834 : vec2<f32> = u_xlat12;
  let x_835 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_834);
  u_xlat25 = x_835.w;
  let x_837 : f32 = u_xlat25;
  let x_839 : f32 = u_xlat5.x;
  u_xlat25 = (x_837 * x_839);
  let x_841 : vec4<f32> = u_xlat4;
  let x_843 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_841.x, x_841.y, x_841.z), vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_852 : vec4<f32> = u_xlat4;
  let x_854 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_852.x, x_852.x));
  u_xlat4.x = x_854.x;
  let x_858 : f32 = u_xlat4.x;
  let x_859 : f32 = u_xlat25;
  u_xlat4.x = (x_858 * x_859);
  let x_862 : f32 = u_xlat24;
  let x_864 : f32 = u_xlat4.x;
  u_xlat24 = (x_862 * x_864);
  let x_867 : vec3<f32> = vs_TEXCOORD2;
  let x_868 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_867, -(vec3<f32>(x_868.x, x_868.y, x_868.z)));
  let x_874 : vec3<f32> = vs_TEXCOORD3;
  let x_875 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_874, -(vec3<f32>(x_875.x, x_875.y, x_875.z)));
  let x_881 : vec3<f32> = vs_TEXCOORD4;
  let x_882 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_881, -(vec3<f32>(x_882.x, x_882.y, x_882.z)));
  let x_887 : vec4<f32> = u_xlat4;
  let x_889 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(vec3<f32>(x_887.x, x_887.y, x_887.z), vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_894 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_894);
  let x_897 : vec4<f32> = u_xlat3;
  let x_899 : vec4<f32> = u_xlat4;
  let x_901 : vec3<f32> = (vec3<f32>(x_897.x, x_897.x, x_897.x) * vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : f32 = u_xlat24;
  let x_908 : vec4<f32> = x_18.x_LightColor0;
  let x_910 : vec3<f32> = (vec3<f32>(x_904, x_904, x_904) * vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_911 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec3<f32> = u_xlat1;
  let x_914 : f32 = u_xlat21;
  let x_917 : vec3<f32> = u_xlat0;
  u_xlat1 = ((x_913 * vec3<f32>(x_914, x_914, x_914)) + x_917);
  let x_919 : vec3<f32> = u_xlat1;
  let x_920 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_919, x_920);
  let x_922 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_922);
  let x_924 : f32 = u_xlat21;
  let x_926 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_924, x_924, x_924) * x_926);
  let x_928 : vec4<f32> = u_xlat3;
  let x_930 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_928.x, x_928.y, x_928.z), x_930);
  let x_933 : vec4<f32> = u_xlat3;
  let x_935 : vec3<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(x_933.x, x_933.y, x_933.z), x_935);
  let x_938 : vec3<f32> = u_xlat0;
  let x_941 : vec2<f32> = max(vec2<f32>(x_938.x, x_938.y), vec2<f32>(0.0f, 0.0f));
  let x_942 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_941.x, x_941.y, x_942.z);
  let x_945 : f32 = u_xlat22;
  u_xlat14 = (x_945 * 128.0f);
  let x_950 : f32 = u_xlat0.y;
  u_xlat7.x = log2(x_950);
  let x_954 : f32 = u_xlat7.x;
  let x_955 : f32 = u_xlat14;
  u_xlat7.x = (x_954 * x_955);
  let x_959 : f32 = u_xlat7.x;
  u_xlat7.x = exp2(x_959);
  let x_962 : vec4<f32> = u_xlat2;
  let x_964 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_962.x, x_962.y, x_962.z) * vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_967 : vec4<f32> = u_xlat4;
  let x_971 : vec4<f32> = x_18.x_SpecColor;
  let x_973 : vec3<f32> = (vec3<f32>(x_967.x, x_967.y, x_967.z) * vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : vec3<f32> = u_xlat7;
  let x_978 : vec4<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_976.x, x_976.x, x_976.x) * vec3<f32>(x_978.x, x_978.y, x_978.z));
  let x_983 : vec3<f32> = u_xlat1;
  let x_984 : vec3<f32> = u_xlat0;
  let x_987 : vec3<f32> = u_xlat7;
  let x_988 : vec3<f32> = ((x_983 * vec3<f32>(x_984.x, x_984.x, x_984.x)) + x_987);
  let x_989 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_992 : f32 = u_xlat2.w;
  SV_Target0.w = x_992;
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

