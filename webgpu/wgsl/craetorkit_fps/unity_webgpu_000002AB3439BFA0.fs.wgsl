struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb21 : bool;
  var u_xlat5 : vec4<f32>;
  var x_230 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Color;
  u_xlat1 = (x_27 * x_37);
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = x_32.x_Color;
  let x_47 : vec3<f32> = ((vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_42.x, x_42.y, x_42.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_47.z, x_48.w);
  let x_53 : f32 = x_32.x_Metallic;
  let x_55 : f32 = x_32.x_Metallic;
  let x_57 : f32 = x_32.x_Metallic;
  let x_58 : vec3<f32> = vec3<f32>(x_53, x_55, x_57);
  let x_63 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_63.x, x_63.y, x_63.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : f32 = x_32.x_Metallic;
  u_xlat21 = ((-(x_74) * 0.959999979f) + 0.959999979f);
  let x_79 : f32 = u_xlat21;
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec4<f32> = vs_TEXCOORD4;
  let x_90 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_88.x, x_88.y, x_88.z), vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_97 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_97);
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = vs_TEXCOORD4;
  let x_104 : vec3<f32> = (vec3<f32>(x_100.x, x_100.x, x_100.x) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_109 : vec4<f32> = vs_TEXCOORD1;
  let x_111 : vec4<f32> = vs_TEXCOORD1;
  u_xlat23 = dot(vec3<f32>(x_109.x, x_109.y, x_109.z), vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_114);
  let x_118 : f32 = u_xlat23;
  let x_120 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_118, x_118, x_118) * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec3<f32> = (vec3<f32>(x_123.w, x_123.w, x_123.w) * vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : f32 = u_xlat21;
  u_xlat23 = (-(x_130) + 1.0f);
  let x_138 : f32 = u_xlat1.w;
  let x_139 : f32 = u_xlat21;
  let x_141 : f32 = u_xlat23;
  SV_Target0.w = ((x_138 * x_139) + x_141);
  let x_148 : vec3<f32> = vs_TEXCOORD5;
  let x_153 : vec4<f32> = x_32.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_148.y, x_148.y, x_148.y, x_148.y) * x_153);
  let x_157 : vec4<f32> = x_32.unity_WorldToLight[0i];
  let x_158 : vec3<f32> = vs_TEXCOORD5;
  let x_161 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_157 * vec4<f32>(x_158.x, x_158.x, x_158.x, x_158.x)) + x_161);
  let x_165 : vec4<f32> = x_32.unity_WorldToLight[2i];
  let x_166 : vec3<f32> = vs_TEXCOORD5;
  let x_169 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_165 * vec4<f32>(x_166.z, x_166.z, x_166.z, x_166.z)) + x_169);
  let x_171 : vec4<f32> = u_xlat4;
  let x_174 : vec4<f32> = x_32.unity_WorldToLight[3i];
  u_xlat4 = (x_171 + x_174);
  let x_180 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_180 == 1.0f);
  let x_182 : bool = u_xlatb21;
  if (x_182) {
    let x_187 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_187 == 1.0f);
    let x_190 : vec3<f32> = vs_TEXCOORD5;
    let x_194 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_196 : vec3<f32> = (vec3<f32>(x_190.y, x_190.y, x_190.y) * vec3<f32>(x_194.x, x_194.y, x_194.z));
    let x_197 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_200 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_202 : vec3<f32> = vs_TEXCOORD5;
    let x_205 : vec4<f32> = u_xlat5;
    let x_207 : vec3<f32> = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_202.x, x_202.x, x_202.x)) + vec3<f32>(x_205.x, x_205.y, x_205.z));
    let x_208 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
    let x_211 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_213 : vec3<f32> = vs_TEXCOORD5;
    let x_216 : vec4<f32> = u_xlat5;
    let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213.z, x_213.z, x_213.z)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
    let x_219 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_221 : vec4<f32> = u_xlat5;
    let x_224 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_226 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) + vec3<f32>(x_224.x, x_224.y, x_224.z));
    let x_227 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
    let x_229 : bool = u_xlatb21;
    if (x_229) {
      let x_233 : vec4<f32> = u_xlat5;
      x_230 = vec3<f32>(x_233.x, x_233.y, x_233.z);
    } else {
      let x_236 : vec3<f32> = vs_TEXCOORD5;
      x_230 = x_236;
    }
    let x_237 : vec3<f32> = x_230;
    let x_238 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
    let x_240 : vec4<f32> = u_xlat5;
    let x_245 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_247 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) + -(x_245));
    let x_248 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
    let x_250 : vec4<f32> = u_xlat5;
    let x_254 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_255 : vec3<f32> = (vec3<f32>(x_250.x, x_250.y, x_250.z) * x_254);
    let x_256 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_256.x, x_255.x, x_255.y, x_255.z);
    let x_259 : f32 = u_xlat5.y;
    u_xlat21 = ((x_259 * 0.25f) + 0.75f);
    let x_267 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_267 * 0.5f) + 0.75f);
    let x_271 : f32 = u_xlat21;
    let x_272 : f32 = u_xlat22;
    u_xlat5.x = max(x_271, x_272);
    let x_283 : vec4<f32> = u_xlat5;
    let x_285 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_283.x, x_283.z, x_283.w));
    u_xlat5 = x_285;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_291 : vec4<f32> = u_xlat5;
  let x_293 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_291, x_293);
  let x_295 : f32 = u_xlat21;
  u_xlat21 = clamp(x_295, 0.0f, 1.0f);
  let x_300 : f32 = u_xlat4.z;
  u_xlatb22 = (0.0f < x_300);
  let x_302 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_302);
  let x_304 : vec4<f32> = u_xlat4;
  let x_306 : vec4<f32> = u_xlat4;
  let x_308 : vec2<f32> = (vec2<f32>(x_304.x, x_304.y) / vec2<f32>(x_306.w, x_306.w));
  let x_309 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_308.x, x_308.y, x_309.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat5;
  let x_314 : vec2<f32> = (vec2<f32>(x_311.x, x_311.y) + vec2<f32>(0.5f, 0.5f));
  let x_315 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_314.x, x_314.y, x_315.z, x_315.w);
  let x_322 : vec4<f32> = u_xlat5;
  let x_324 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_322.x, x_322.y));
  u_xlat23 = x_324.w;
  let x_326 : f32 = u_xlat22;
  let x_327 : f32 = u_xlat23;
  u_xlat22 = (x_326 * x_327);
  let x_329 : vec4<f32> = u_xlat4;
  let x_331 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_329.x, x_329.y, x_329.z), vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_339 : f32 = u_xlat23;
  let x_341 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_339, x_339));
  u_xlat23 = x_341.x;
  let x_343 : f32 = u_xlat22;
  let x_344 : f32 = u_xlat23;
  u_xlat22 = (x_343 * x_344);
  let x_346 : f32 = u_xlat21;
  let x_347 : f32 = u_xlat22;
  u_xlat21 = (x_346 * x_347);
  let x_352 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_352;
  let x_356 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_356;
  let x_359 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_359;
  let x_361 : vec4<f32> = u_xlat4;
  let x_363 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_361.x, x_361.y, x_361.z), vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_366);
  let x_368 : f32 = u_xlat22;
  let x_370 : vec4<f32> = u_xlat4;
  let x_372 : vec3<f32> = (vec3<f32>(x_368, x_368, x_368) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : f32 = u_xlat21;
  let x_380 : vec4<f32> = x_32.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_376, x_376, x_376) * vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_385 : f32 = x_32.x_Glossiness;
  u_xlat21 = (-(x_385) + 1.0f);
  let x_388 : vec4<f32> = u_xlat4;
  let x_390 : f32 = u_xlat22;
  let x_393 : vec3<f32> = u_xlat3;
  let x_395 : vec3<f32> = ((vec3<f32>(x_388.x, x_388.y, x_388.z) * vec3<f32>(x_390, x_390, x_390)) + -(x_393));
  let x_396 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec4<f32> = u_xlat4;
  let x_400 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_398.x, x_398.y, x_398.z), vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : f32 = u_xlat22;
  u_xlat22 = max(x_403, 0.001f);
  let x_406 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_406);
  let x_408 : f32 = u_xlat22;
  let x_410 : vec4<f32> = u_xlat4;
  let x_412 : vec3<f32> = (vec3<f32>(x_408, x_408, x_408) * vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat2;
  let x_417 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_415.x, x_415.y, x_415.z), -(x_417));
  let x_420 : vec4<f32> = u_xlat2;
  let x_422 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat23;
  u_xlat23 = clamp(x_425, 0.0f, 1.0f);
  let x_427 : vec4<f32> = u_xlat2;
  let x_429 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_427.x, x_427.y, x_427.z), vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_434 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_434, 0.0f, 1.0f);
  let x_438 : vec4<f32> = u_xlat5;
  let x_440 : vec4<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_438.x, x_438.y, x_438.z), vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : f32 = u_xlat9;
  u_xlat9 = clamp(x_443, 0.0f, 1.0f);
  let x_446 : f32 = u_xlat9;
  let x_447 : f32 = u_xlat9;
  u_xlat16 = (x_446 * x_447);
  let x_449 : f32 = u_xlat16;
  let x_451 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_449, x_449), vec2<f32>(x_451, x_451));
  let x_454 : f32 = u_xlat16;
  u_xlat16 = (x_454 + -0.5f);
  let x_457 : f32 = u_xlat23;
  u_xlat3.x = (-(x_457) + 1.0f);
  let x_463 : f32 = u_xlat3.x;
  let x_465 : f32 = u_xlat3.x;
  u_xlat10 = (x_463 * x_465);
  let x_467 : f32 = u_xlat10;
  let x_468 : f32 = u_xlat10;
  u_xlat10 = (x_467 * x_468);
  let x_471 : f32 = u_xlat3.x;
  let x_472 : f32 = u_xlat10;
  u_xlat3.x = (x_471 * x_472);
  let x_475 : f32 = u_xlat16;
  let x_477 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_475 * x_477) + 1.0f);
  let x_481 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_481)) + 1.0f);
  let x_486 : f32 = u_xlat10;
  let x_487 : f32 = u_xlat10;
  u_xlat17 = (x_486 * x_487);
  let x_489 : f32 = u_xlat17;
  let x_490 : f32 = u_xlat17;
  u_xlat17 = (x_489 * x_490);
  let x_492 : f32 = u_xlat10;
  let x_493 : f32 = u_xlat17;
  u_xlat10 = (x_492 * x_493);
  let x_495 : f32 = u_xlat16;
  let x_496 : f32 = u_xlat10;
  u_xlat16 = ((x_495 * x_496) + 1.0f);
  let x_499 : f32 = u_xlat16;
  let x_501 : f32 = u_xlat3.x;
  u_xlat16 = (x_499 * x_501);
  let x_503 : f32 = u_xlat23;
  let x_504 : f32 = u_xlat16;
  u_xlat16 = (x_503 * x_504);
  let x_506 : f32 = u_xlat21;
  let x_507 : f32 = u_xlat21;
  u_xlat21 = (x_506 * x_507);
  let x_509 : f32 = u_xlat21;
  u_xlat21 = max(x_509, 0.002f);
  let x_512 : f32 = u_xlat21;
  u_xlat3.x = (-(x_512) + 1.0f);
  let x_516 : f32 = u_xlat22;
  let x_519 : f32 = u_xlat3.x;
  let x_521 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_516) * x_519) + x_521);
  let x_523 : f32 = u_xlat23;
  let x_525 : f32 = u_xlat3.x;
  let x_527 : f32 = u_xlat21;
  u_xlat3.x = ((x_523 * x_525) + x_527);
  let x_530 : f32 = u_xlat22;
  let x_533 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_530) * x_533);
  let x_535 : f32 = u_xlat23;
  let x_536 : f32 = u_xlat10;
  let x_538 : f32 = u_xlat22;
  u_xlat22 = ((x_535 * x_536) + x_538);
  let x_540 : f32 = u_xlat22;
  u_xlat22 = (x_540 + 0.00001f);
  let x_543 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_543);
  let x_545 : f32 = u_xlat21;
  let x_546 : f32 = u_xlat21;
  u_xlat21 = (x_545 * x_546);
  let x_549 : f32 = u_xlat2.x;
  let x_550 : f32 = u_xlat21;
  let x_553 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_549 * x_550) + -(x_553));
  let x_558 : f32 = u_xlat3.x;
  let x_560 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_558 * x_560) + 1.0f);
  let x_564 : f32 = u_xlat21;
  u_xlat21 = (x_564 * 0.318309873f);
  let x_568 : f32 = u_xlat2.x;
  let x_570 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_568 * x_570) + 0.0000001f);
  let x_575 : f32 = u_xlat21;
  let x_577 : f32 = u_xlat2.x;
  u_xlat21 = (x_575 / x_577);
  let x_579 : f32 = u_xlat21;
  let x_580 : f32 = u_xlat22;
  u_xlat21 = (x_579 * x_580);
  let x_582 : f32 = u_xlat23;
  let x_583 : f32 = u_xlat21;
  u_xlat21 = (x_582 * x_583);
  let x_585 : f32 = u_xlat21;
  u_xlat21 = (x_585 * 3.141592741f);
  let x_588 : f32 = u_xlat21;
  u_xlat21 = max(x_588, 0.0f);
  let x_590 : vec4<f32> = u_xlat0;
  let x_592 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_590.x, x_590.y, x_590.z), vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : f32 = u_xlat22;
  u_xlatb22 = !((x_595 == 0.0f));
  let x_597 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_597);
  let x_599 : f32 = u_xlat21;
  let x_600 : f32 = u_xlat22;
  u_xlat21 = (x_599 * x_600);
  let x_602 : f32 = u_xlat16;
  let x_604 : vec3<f32> = u_xlat6;
  let x_605 : vec3<f32> = (vec3<f32>(x_602, x_602, x_602) * x_604);
  let x_606 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_605.x, x_606.y, x_605.y, x_605.z);
  let x_608 : vec3<f32> = u_xlat6;
  let x_609 : f32 = u_xlat21;
  u_xlat3 = (x_608 * vec3<f32>(x_609, x_609, x_609));
  let x_612 : f32 = u_xlat9;
  u_xlat21 = (-(x_612) + 1.0f);
  let x_615 : f32 = u_xlat21;
  let x_616 : f32 = u_xlat21;
  u_xlat22 = (x_615 * x_616);
  let x_618 : f32 = u_xlat22;
  let x_619 : f32 = u_xlat22;
  u_xlat22 = (x_618 * x_619);
  let x_621 : f32 = u_xlat21;
  let x_622 : f32 = u_xlat22;
  u_xlat21 = (x_621 * x_622);
  let x_624 : vec4<f32> = u_xlat0;
  let x_628 : vec3<f32> = (-(vec3<f32>(x_624.x, x_624.y, x_624.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_629 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec4<f32> = u_xlat4;
  let x_633 : f32 = u_xlat21;
  let x_636 : vec4<f32> = u_xlat0;
  let x_638 : vec3<f32> = ((vec3<f32>(x_631.x, x_631.y, x_631.z) * vec3<f32>(x_633, x_633, x_633)) + vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : vec4<f32> = u_xlat0;
  let x_643 : vec3<f32> = u_xlat3;
  let x_644 : vec3<f32> = (vec3<f32>(x_641.x, x_641.y, x_641.z) * x_643);
  let x_645 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec4<f32> = u_xlat1;
  let x_649 : vec4<f32> = u_xlat2;
  let x_652 : vec4<f32> = u_xlat0;
  let x_654 : vec3<f32> = ((vec3<f32>(x_647.x, x_647.y, x_647.z) * vec3<f32>(x_649.x, x_649.z, x_649.w)) + vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_658 : f32 = vs_TEXCOORD1.w;
  let x_660 : f32 = x_32.x_ProjectionParams.y;
  u_xlat21 = (x_658 / x_660);
  let x_662 : f32 = u_xlat21;
  u_xlat21 = (-(x_662) + 1.0f);
  let x_665 : f32 = u_xlat21;
  let x_667 : f32 = x_32.x_ProjectionParams.z;
  u_xlat21 = (x_665 * x_667);
  let x_669 : f32 = u_xlat21;
  u_xlat21 = max(x_669, 0.0f);
  let x_671 : f32 = u_xlat21;
  let x_673 : f32 = x_32.unity_FogParams.x;
  u_xlat21 = (x_671 * x_673);
  let x_675 : f32 = u_xlat21;
  let x_676 : f32 = u_xlat21;
  u_xlat21 = (x_675 * -(x_676));
  let x_679 : f32 = u_xlat21;
  u_xlat21 = exp2(x_679);
  let x_681 : vec4<f32> = u_xlat0;
  let x_683 : f32 = u_xlat21;
  let x_685 : vec3<f32> = (vec3<f32>(x_681.x, x_681.y, x_681.z) * vec3<f32>(x_683, x_683, x_683));
  let x_686 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

