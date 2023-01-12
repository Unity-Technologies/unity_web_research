struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
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
  var x_229 : vec3<f32>;
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
    let x_193 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_195 : vec3<f32> = (vec3<f32>(x_190.y, x_190.y, x_190.y) * vec3<f32>(x_193.x, x_193.y, x_193.z));
    let x_196 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
    let x_199 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_201 : vec3<f32> = vs_TEXCOORD5;
    let x_204 : vec4<f32> = u_xlat5;
    let x_206 : vec3<f32> = ((vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_201.x, x_201.x, x_201.x)) + vec3<f32>(x_204.x, x_204.y, x_204.z));
    let x_207 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
    let x_210 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_212 : vec3<f32> = vs_TEXCOORD5;
    let x_215 : vec4<f32> = u_xlat5;
    let x_217 : vec3<f32> = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.z, x_212.z, x_212.z)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
    let x_218 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
    let x_220 : vec4<f32> = u_xlat5;
    let x_223 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_225 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) + vec3<f32>(x_223.x, x_223.y, x_223.z));
    let x_226 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
    let x_228 : bool = u_xlatb21;
    if (x_228) {
      let x_232 : vec4<f32> = u_xlat5;
      x_229 = vec3<f32>(x_232.x, x_232.y, x_232.z);
    } else {
      let x_235 : vec3<f32> = vs_TEXCOORD5;
      x_229 = x_235;
    }
    let x_236 : vec3<f32> = x_229;
    let x_237 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
    let x_239 : vec4<f32> = u_xlat5;
    let x_244 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_246 : vec3<f32> = (vec3<f32>(x_239.x, x_239.y, x_239.z) + -(x_244));
    let x_247 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
    let x_249 : vec4<f32> = u_xlat5;
    let x_252 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_253 : vec3<f32> = (vec3<f32>(x_249.x, x_249.y, x_249.z) * x_252);
    let x_254 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_254.x, x_253.x, x_253.y, x_253.z);
    let x_257 : f32 = u_xlat5.y;
    u_xlat21 = ((x_257 * 0.25f) + 0.75f);
    let x_265 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_265 * 0.5f) + 0.75f);
    let x_269 : f32 = u_xlat21;
    let x_270 : f32 = u_xlat22;
    u_xlat5.x = max(x_269, x_270);
    let x_281 : vec4<f32> = u_xlat5;
    let x_283 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_281.x, x_281.z, x_281.w));
    u_xlat5 = x_283;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_289 : vec4<f32> = u_xlat5;
  let x_291 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_289, x_291);
  let x_293 : f32 = u_xlat21;
  u_xlat21 = clamp(x_293, 0.0f, 1.0f);
  let x_298 : f32 = u_xlat4.z;
  u_xlatb22 = (0.0f < x_298);
  let x_300 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_300);
  let x_302 : vec4<f32> = u_xlat4;
  let x_304 : vec4<f32> = u_xlat4;
  let x_306 : vec2<f32> = (vec2<f32>(x_302.x, x_302.y) / vec2<f32>(x_304.w, x_304.w));
  let x_307 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_306.x, x_306.y, x_307.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat5;
  let x_312 : vec2<f32> = (vec2<f32>(x_309.x, x_309.y) + vec2<f32>(0.5f, 0.5f));
  let x_313 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_312.x, x_312.y, x_313.z, x_313.w);
  let x_320 : vec4<f32> = u_xlat5;
  let x_322 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_320.x, x_320.y));
  u_xlat23 = x_322.w;
  let x_324 : f32 = u_xlat22;
  let x_325 : f32 = u_xlat23;
  u_xlat22 = (x_324 * x_325);
  let x_327 : vec4<f32> = u_xlat4;
  let x_329 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_327.x, x_327.y, x_327.z), vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_337 : f32 = u_xlat23;
  let x_339 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_337, x_337));
  u_xlat23 = x_339.x;
  let x_341 : f32 = u_xlat22;
  let x_342 : f32 = u_xlat23;
  u_xlat22 = (x_341 * x_342);
  let x_344 : f32 = u_xlat21;
  let x_345 : f32 = u_xlat22;
  u_xlat21 = (x_344 * x_345);
  let x_350 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_350;
  let x_354 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_354;
  let x_357 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_357;
  let x_359 : vec4<f32> = u_xlat4;
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_359.x, x_359.y, x_359.z), vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_364);
  let x_366 : f32 = u_xlat22;
  let x_368 : vec4<f32> = u_xlat4;
  let x_370 : vec3<f32> = (vec3<f32>(x_366, x_366, x_366) * vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : f32 = u_xlat21;
  let x_378 : vec4<f32> = x_32.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_374, x_374, x_374) * vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_383 : f32 = x_32.x_Glossiness;
  u_xlat21 = (-(x_383) + 1.0f);
  let x_386 : vec4<f32> = u_xlat4;
  let x_388 : f32 = u_xlat22;
  let x_391 : vec3<f32> = u_xlat3;
  let x_393 : vec3<f32> = ((vec3<f32>(x_386.x, x_386.y, x_386.z) * vec3<f32>(x_388, x_388, x_388)) + -(x_391));
  let x_394 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_396 : vec4<f32> = u_xlat4;
  let x_398 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_396.x, x_396.y, x_396.z), vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : f32 = u_xlat22;
  u_xlat22 = max(x_401, 0.001f);
  let x_404 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_404);
  let x_406 : f32 = u_xlat22;
  let x_408 : vec4<f32> = u_xlat4;
  let x_410 : vec3<f32> = (vec3<f32>(x_406, x_406, x_406) * vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_413 : vec4<f32> = u_xlat2;
  let x_415 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_413.x, x_413.y, x_413.z), -(x_415));
  let x_418 : vec4<f32> = u_xlat2;
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : f32 = u_xlat23;
  u_xlat23 = clamp(x_423, 0.0f, 1.0f);
  let x_425 : vec4<f32> = u_xlat2;
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_425.x, x_425.y, x_425.z), vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_432 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_432, 0.0f, 1.0f);
  let x_436 : vec4<f32> = u_xlat5;
  let x_438 : vec4<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_436.x, x_436.y, x_436.z), vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : f32 = u_xlat9;
  u_xlat9 = clamp(x_441, 0.0f, 1.0f);
  let x_444 : f32 = u_xlat9;
  let x_445 : f32 = u_xlat9;
  u_xlat16 = (x_444 * x_445);
  let x_447 : f32 = u_xlat16;
  let x_449 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_447, x_447), vec2<f32>(x_449, x_449));
  let x_452 : f32 = u_xlat16;
  u_xlat16 = (x_452 + -0.5f);
  let x_455 : f32 = u_xlat23;
  u_xlat3.x = (-(x_455) + 1.0f);
  let x_461 : f32 = u_xlat3.x;
  let x_463 : f32 = u_xlat3.x;
  u_xlat10 = (x_461 * x_463);
  let x_465 : f32 = u_xlat10;
  let x_466 : f32 = u_xlat10;
  u_xlat10 = (x_465 * x_466);
  let x_469 : f32 = u_xlat3.x;
  let x_470 : f32 = u_xlat10;
  u_xlat3.x = (x_469 * x_470);
  let x_473 : f32 = u_xlat16;
  let x_475 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_473 * x_475) + 1.0f);
  let x_479 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_479)) + 1.0f);
  let x_484 : f32 = u_xlat10;
  let x_485 : f32 = u_xlat10;
  u_xlat17 = (x_484 * x_485);
  let x_487 : f32 = u_xlat17;
  let x_488 : f32 = u_xlat17;
  u_xlat17 = (x_487 * x_488);
  let x_490 : f32 = u_xlat10;
  let x_491 : f32 = u_xlat17;
  u_xlat10 = (x_490 * x_491);
  let x_493 : f32 = u_xlat16;
  let x_494 : f32 = u_xlat10;
  u_xlat16 = ((x_493 * x_494) + 1.0f);
  let x_497 : f32 = u_xlat16;
  let x_499 : f32 = u_xlat3.x;
  u_xlat16 = (x_497 * x_499);
  let x_501 : f32 = u_xlat23;
  let x_502 : f32 = u_xlat16;
  u_xlat16 = (x_501 * x_502);
  let x_504 : f32 = u_xlat21;
  let x_505 : f32 = u_xlat21;
  u_xlat21 = (x_504 * x_505);
  let x_507 : f32 = u_xlat21;
  u_xlat21 = max(x_507, 0.002f);
  let x_510 : f32 = u_xlat21;
  u_xlat3.x = (-(x_510) + 1.0f);
  let x_514 : f32 = u_xlat22;
  let x_517 : f32 = u_xlat3.x;
  let x_519 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_514) * x_517) + x_519);
  let x_521 : f32 = u_xlat23;
  let x_523 : f32 = u_xlat3.x;
  let x_525 : f32 = u_xlat21;
  u_xlat3.x = ((x_521 * x_523) + x_525);
  let x_528 : f32 = u_xlat22;
  let x_531 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_528) * x_531);
  let x_533 : f32 = u_xlat23;
  let x_534 : f32 = u_xlat10;
  let x_536 : f32 = u_xlat22;
  u_xlat22 = ((x_533 * x_534) + x_536);
  let x_538 : f32 = u_xlat22;
  u_xlat22 = (x_538 + 0.00001f);
  let x_541 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_541);
  let x_543 : f32 = u_xlat21;
  let x_544 : f32 = u_xlat21;
  u_xlat21 = (x_543 * x_544);
  let x_547 : f32 = u_xlat2.x;
  let x_548 : f32 = u_xlat21;
  let x_551 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_547 * x_548) + -(x_551));
  let x_556 : f32 = u_xlat3.x;
  let x_558 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_556 * x_558) + 1.0f);
  let x_562 : f32 = u_xlat21;
  u_xlat21 = (x_562 * 0.318309873f);
  let x_566 : f32 = u_xlat2.x;
  let x_568 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_566 * x_568) + 0.0000001f);
  let x_573 : f32 = u_xlat21;
  let x_575 : f32 = u_xlat2.x;
  u_xlat21 = (x_573 / x_575);
  let x_577 : f32 = u_xlat21;
  let x_578 : f32 = u_xlat22;
  u_xlat21 = (x_577 * x_578);
  let x_580 : f32 = u_xlat23;
  let x_581 : f32 = u_xlat21;
  u_xlat21 = (x_580 * x_581);
  let x_583 : f32 = u_xlat21;
  u_xlat21 = (x_583 * 3.141592741f);
  let x_586 : f32 = u_xlat21;
  u_xlat21 = max(x_586, 0.0f);
  let x_588 : vec4<f32> = u_xlat0;
  let x_590 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_588.x, x_588.y, x_588.z), vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : f32 = u_xlat22;
  u_xlatb22 = !((x_593 == 0.0f));
  let x_595 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_595);
  let x_597 : f32 = u_xlat21;
  let x_598 : f32 = u_xlat22;
  u_xlat21 = (x_597 * x_598);
  let x_600 : f32 = u_xlat16;
  let x_602 : vec3<f32> = u_xlat6;
  let x_603 : vec3<f32> = (vec3<f32>(x_600, x_600, x_600) * x_602);
  let x_604 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_603.x, x_604.y, x_603.y, x_603.z);
  let x_606 : vec3<f32> = u_xlat6;
  let x_607 : f32 = u_xlat21;
  u_xlat3 = (x_606 * vec3<f32>(x_607, x_607, x_607));
  let x_610 : f32 = u_xlat9;
  u_xlat21 = (-(x_610) + 1.0f);
  let x_613 : f32 = u_xlat21;
  let x_614 : f32 = u_xlat21;
  u_xlat22 = (x_613 * x_614);
  let x_616 : f32 = u_xlat22;
  let x_617 : f32 = u_xlat22;
  u_xlat22 = (x_616 * x_617);
  let x_619 : f32 = u_xlat21;
  let x_620 : f32 = u_xlat22;
  u_xlat21 = (x_619 * x_620);
  let x_622 : vec4<f32> = u_xlat0;
  let x_626 : vec3<f32> = (-(vec3<f32>(x_622.x, x_622.y, x_622.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_627 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat4;
  let x_631 : f32 = u_xlat21;
  let x_634 : vec4<f32> = u_xlat0;
  let x_636 : vec3<f32> = ((vec3<f32>(x_629.x, x_629.y, x_629.z) * vec3<f32>(x_631, x_631, x_631)) + vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_637 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat0;
  let x_641 : vec3<f32> = u_xlat3;
  let x_642 : vec3<f32> = (vec3<f32>(x_639.x, x_639.y, x_639.z) * x_641);
  let x_643 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec4<f32> = u_xlat1;
  let x_647 : vec4<f32> = u_xlat2;
  let x_650 : vec4<f32> = u_xlat0;
  let x_652 : vec3<f32> = ((vec3<f32>(x_645.x, x_645.y, x_645.z) * vec3<f32>(x_647.x, x_647.z, x_647.w)) + vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
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

