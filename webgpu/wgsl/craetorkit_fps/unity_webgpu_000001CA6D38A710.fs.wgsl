struct PGlobals {
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
  unity_WorldToLight : mat4x4<f32>,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(10) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_NormalMap : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

@group(0) @binding(4) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb25 : bool;
  var u_xlat7 : vec4<f32>;
  var x_208 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var u_xlat20 : vec2<f32>;
  var u_xlat27 : f32;
  var u_xlat10 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat9 : f32;
  var u_xlatb24 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat24;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD4;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat25;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_70 : vec2<f32> = vs_TEXCOORD0;
  let x_71 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_70);
  u_xlat3 = vec3<f32>(x_71.x, x_71.y, x_71.z);
  let x_80 : vec2<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_80);
  u_xlat4 = vec2<f32>(x_81.x, x_81.w);
  let x_89 : vec2<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_89);
  u_xlat5 = vec3<f32>(x_90.x, x_90.y, x_90.w);
  let x_95 : f32 = u_xlat5.z;
  let x_98 : f32 = u_xlat5.x;
  u_xlat5.x = (x_95 * x_98);
  let x_101 : vec3<f32> = u_xlat5;
  let x_108 : vec2<f32> = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_108.x, x_108.y, x_109.z);
  let x_111 : vec3<f32> = u_xlat5;
  let x_113 : vec3<f32> = u_xlat5;
  u_xlat25 = dot(vec2<f32>(x_111.x, x_111.y), vec2<f32>(x_113.x, x_113.y));
  let x_116 : f32 = u_xlat25;
  u_xlat25 = min(x_116, 1.0f);
  let x_119 : f32 = u_xlat25;
  u_xlat25 = (-(x_119) + 1.0f);
  let x_122 : f32 = u_xlat25;
  u_xlat5.z = sqrt(x_122);
  let x_127 : vec3<f32> = vs_TEXCOORD4;
  let x_131 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat6 = (vec4<f32>(x_127.y, x_127.y, x_127.y, x_127.y) * x_131);
  let x_134 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_135 : vec3<f32> = vs_TEXCOORD4;
  let x_138 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_134 * vec4<f32>(x_135.x, x_135.x, x_135.x, x_135.x)) + x_138);
  let x_142 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_143 : vec3<f32> = vs_TEXCOORD4;
  let x_146 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_142 * vec4<f32>(x_143.z, x_143.z, x_143.z, x_143.z)) + x_146);
  let x_148 : vec4<f32> = u_xlat6;
  let x_151 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat6 = (x_148 + x_151);
  let x_158 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_158 == 1.0f);
  let x_160 : bool = u_xlatb25;
  if (x_160) {
    let x_165 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_165 == 1.0f);
    let x_168 : vec3<f32> = vs_TEXCOORD4;
    let x_172 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_174 : vec3<f32> = (vec3<f32>(x_168.y, x_168.y, x_168.y) * vec3<f32>(x_172.x, x_172.y, x_172.z));
    let x_175 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
    let x_178 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_180 : vec3<f32> = vs_TEXCOORD4;
    let x_183 : vec4<f32> = u_xlat7;
    let x_185 : vec3<f32> = ((vec3<f32>(x_178.x, x_178.y, x_178.z) * vec3<f32>(x_180.x, x_180.x, x_180.x)) + vec3<f32>(x_183.x, x_183.y, x_183.z));
    let x_186 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
    let x_189 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_191 : vec3<f32> = vs_TEXCOORD4;
    let x_194 : vec4<f32> = u_xlat7;
    let x_196 : vec3<f32> = ((vec3<f32>(x_189.x, x_189.y, x_189.z) * vec3<f32>(x_191.z, x_191.z, x_191.z)) + vec3<f32>(x_194.x, x_194.y, x_194.z));
    let x_197 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_199 : vec4<f32> = u_xlat7;
    let x_202 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_204 : vec3<f32> = (vec3<f32>(x_199.x, x_199.y, x_199.z) + vec3<f32>(x_202.x, x_202.y, x_202.z));
    let x_205 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    let x_207 : bool = u_xlatb25;
    if (x_207) {
      let x_211 : vec4<f32> = u_xlat7;
      x_208 = vec3<f32>(x_211.x, x_211.y, x_211.z);
    } else {
      let x_214 : vec3<f32> = vs_TEXCOORD4;
      x_208 = x_214;
    }
    let x_215 : vec3<f32> = x_208;
    let x_216 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
    let x_218 : vec4<f32> = u_xlat7;
    let x_222 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_224 : vec3<f32> = (vec3<f32>(x_218.x, x_218.y, x_218.z) + -(x_222));
    let x_225 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
    let x_227 : vec4<f32> = u_xlat7;
    let x_231 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_232 : vec3<f32> = (vec3<f32>(x_227.x, x_227.y, x_227.z) * x_231);
    let x_233 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_233.x, x_232.x, x_232.y, x_232.z);
    let x_236 : f32 = u_xlat7.y;
    u_xlat25 = ((x_236 * 0.25f) + 0.75f);
    let x_243 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_243 * 0.5f) + 0.75f);
    let x_247 : f32 = u_xlat25;
    let x_248 : f32 = u_xlat26;
    u_xlat7.x = max(x_247, x_248);
    let x_259 : vec4<f32> = u_xlat7;
    let x_261 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_259.x, x_259.z, x_259.w));
    u_xlat7 = x_261;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_268 : vec4<f32> = u_xlat7;
  let x_270 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_268, x_270);
  let x_272 : f32 = u_xlat25;
  u_xlat25 = clamp(x_272, 0.0f, 1.0f);
  let x_277 : f32 = u_xlat6.z;
  u_xlatb26 = (0.0f < x_277);
  let x_279 : bool = u_xlatb26;
  u_xlat26 = select(0.0f, 1.0f, x_279);
  let x_282 : vec4<f32> = u_xlat6;
  let x_284 : vec4<f32> = u_xlat6;
  u_xlat20 = (vec2<f32>(x_282.x, x_282.y) / vec2<f32>(x_284.w, x_284.w));
  let x_287 : vec2<f32> = u_xlat20;
  u_xlat20 = (x_287 + vec2<f32>(0.5f, 0.5f));
  let x_296 : vec2<f32> = u_xlat20;
  let x_297 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_296);
  u_xlat27 = x_297.w;
  let x_299 : f32 = u_xlat26;
  let x_300 : f32 = u_xlat27;
  u_xlat26 = (x_299 * x_300);
  let x_302 : vec4<f32> = u_xlat6;
  let x_304 : vec4<f32> = u_xlat6;
  u_xlat27 = dot(vec3<f32>(x_302.x, x_302.y, x_302.z), vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_312 : f32 = u_xlat27;
  let x_314 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_312, x_312));
  u_xlat27 = x_314.x;
  let x_316 : f32 = u_xlat26;
  let x_317 : f32 = u_xlat27;
  u_xlat26 = (x_316 * x_317);
  let x_319 : f32 = u_xlat25;
  let x_320 : f32 = u_xlat26;
  u_xlat25 = (x_319 * x_320);
  let x_323 : vec3<f32> = vs_TEXCOORD1;
  let x_324 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_323, x_324);
  let x_328 : vec3<f32> = vs_TEXCOORD2;
  let x_329 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_328, x_329);
  let x_333 : vec3<f32> = vs_TEXCOORD3;
  let x_334 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_333, x_334);
  let x_337 : vec4<f32> = u_xlat6;
  let x_339 : vec4<f32> = u_xlat6;
  u_xlat26 = dot(vec3<f32>(x_337.x, x_337.y, x_337.z), vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_342);
  let x_344 : f32 = u_xlat26;
  let x_346 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_344, x_344, x_344) * vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : f32 = u_xlat25;
  let x_353 : vec4<f32> = x_18.x_LightColor0;
  let x_355 : vec3<f32> = (vec3<f32>(x_349, x_349, x_349) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec3<f32> = u_xlat3;
  let x_361 : vec3<f32> = (x_358 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_362 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_364 : vec2<f32> = u_xlat4;
  let x_366 : vec4<f32> = u_xlat7;
  let x_371 : vec3<f32> = ((vec3<f32>(x_364.x, x_364.x, x_364.x) * vec3<f32>(x_366.x, x_366.y, x_366.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_372 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : f32 = u_xlat4.x;
  u_xlat25 = ((-(x_375) * 0.959999979f) + 0.959999979f);
  let x_380 : f32 = u_xlat25;
  let x_382 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_380, x_380, x_380) * x_382);
  let x_385 : f32 = u_xlat4.y;
  u_xlat25 = (-(x_385) + 1.0f);
  let x_388 : vec3<f32> = u_xlat0;
  let x_389 : f32 = u_xlat24;
  let x_392 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_388 * vec3<f32>(x_389, x_389, x_389)) + x_392);
  let x_394 : vec3<f32> = u_xlat0;
  let x_395 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_394, x_395);
  let x_397 : f32 = u_xlat24;
  u_xlat24 = max(x_397, 0.001f);
  let x_400 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_400);
  let x_402 : f32 = u_xlat24;
  let x_404 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_402, x_402, x_402) * x_404);
  let x_406 : vec3<f32> = u_xlat5;
  let x_407 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(x_406, x_407);
  let x_409 : vec3<f32> = u_xlat5;
  let x_410 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_409, x_410);
  let x_414 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_414, 0.0f, 1.0f);
  let x_418 : vec3<f32> = u_xlat5;
  let x_419 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(x_418, x_419);
  let x_421 : f32 = u_xlat10;
  u_xlat10 = clamp(x_421, 0.0f, 1.0f);
  let x_423 : vec3<f32> = u_xlat1;
  let x_424 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_423, x_424);
  let x_428 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_428, 0.0f, 1.0f);
  let x_433 : f32 = u_xlat0.x;
  let x_435 : f32 = u_xlat0.x;
  u_xlat8.x = (x_433 * x_435);
  let x_438 : vec3<f32> = u_xlat8;
  let x_440 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_438.x, x_438.x), vec2<f32>(x_440, x_440));
  let x_445 : f32 = u_xlat8.x;
  u_xlat8.x = (x_445 + -0.5f);
  let x_451 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_451) + 1.0f);
  let x_454 : f32 = u_xlat16;
  let x_455 : f32 = u_xlat16;
  u_xlat1.x = (x_454 * x_455);
  let x_459 : f32 = u_xlat1.x;
  let x_461 : f32 = u_xlat1.x;
  u_xlat1.x = (x_459 * x_461);
  let x_464 : f32 = u_xlat16;
  let x_466 : f32 = u_xlat1.x;
  u_xlat16 = (x_464 * x_466);
  let x_469 : f32 = u_xlat8.x;
  let x_470 : f32 = u_xlat16;
  u_xlat16 = ((x_469 * x_470) + 1.0f);
  let x_473 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_473)) + 1.0f);
  let x_480 : f32 = u_xlat1.x;
  let x_482 : f32 = u_xlat1.x;
  u_xlat9 = (x_480 * x_482);
  let x_484 : f32 = u_xlat9;
  let x_485 : f32 = u_xlat9;
  u_xlat9 = (x_484 * x_485);
  let x_488 : f32 = u_xlat1.x;
  let x_489 : f32 = u_xlat9;
  u_xlat1.x = (x_488 * x_489);
  let x_493 : f32 = u_xlat8.x;
  let x_495 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_493 * x_495) + 1.0f);
  let x_500 : f32 = u_xlat8.x;
  let x_501 : f32 = u_xlat16;
  u_xlat8.x = (x_500 * x_501);
  let x_504 : f32 = u_xlat25;
  let x_505 : f32 = u_xlat25;
  u_xlat16 = (x_504 * x_505);
  let x_507 : f32 = u_xlat16;
  u_xlat16 = max(x_507, 0.002f);
  let x_510 : f32 = u_xlat16;
  u_xlat1.x = (-(x_510) + 1.0f);
  let x_514 : f32 = u_xlat24;
  let x_517 : f32 = u_xlat1.x;
  let x_519 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_514) * x_517) + x_519);
  let x_522 : f32 = u_xlat2.x;
  let x_524 : f32 = u_xlat1.x;
  let x_526 : f32 = u_xlat16;
  u_xlat1.x = ((x_522 * x_524) + x_526);
  let x_529 : f32 = u_xlat24;
  let x_532 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_529) * x_532);
  let x_535 : f32 = u_xlat2.x;
  let x_536 : f32 = u_xlat9;
  let x_538 : f32 = u_xlat24;
  u_xlat24 = ((x_535 * x_536) + x_538);
  let x_540 : f32 = u_xlat24;
  u_xlat24 = (x_540 + 0.00001f);
  let x_543 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_543);
  let x_545 : f32 = u_xlat16;
  let x_546 : f32 = u_xlat16;
  u_xlat16 = (x_545 * x_546);
  let x_548 : f32 = u_xlat10;
  let x_549 : f32 = u_xlat16;
  let x_551 : f32 = u_xlat10;
  u_xlat1.x = ((x_548 * x_549) + -(x_551));
  let x_556 : f32 = u_xlat1.x;
  let x_557 : f32 = u_xlat10;
  u_xlat1.x = ((x_556 * x_557) + 1.0f);
  let x_561 : f32 = u_xlat16;
  u_xlat16 = (x_561 * 0.318309873f);
  let x_565 : f32 = u_xlat1.x;
  let x_567 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_565 * x_567) + 0.0000001f);
  let x_572 : f32 = u_xlat16;
  let x_574 : f32 = u_xlat1.x;
  u_xlat16 = (x_572 / x_574);
  let x_576 : f32 = u_xlat16;
  let x_577 : f32 = u_xlat24;
  u_xlat8.y = (x_576 * x_577);
  let x_580 : vec3<f32> = u_xlat2;
  let x_582 : vec3<f32> = u_xlat8;
  let x_584 : vec2<f32> = (vec2<f32>(x_580.x, x_580.x) * vec2<f32>(x_582.x, x_582.y));
  let x_585 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_584.x, x_584.y, x_585.z);
  let x_588 : f32 = u_xlat8.y;
  u_xlat16 = (x_588 * 3.141592741f);
  let x_591 : f32 = u_xlat16;
  u_xlat16 = max(x_591, 0.0f);
  let x_593 : vec4<f32> = u_xlat7;
  let x_595 : vec4<f32> = u_xlat7;
  u_xlat24 = dot(vec3<f32>(x_593.x, x_593.y, x_593.z), vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_599 : f32 = u_xlat24;
  u_xlatb24 = !((x_599 == 0.0f));
  let x_601 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_601);
  let x_603 : f32 = u_xlat24;
  let x_604 : f32 = u_xlat16;
  u_xlat16 = (x_603 * x_604);
  let x_606 : vec3<f32> = u_xlat8;
  let x_608 : vec4<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_606.x, x_606.x, x_606.x) * vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat6;
  let x_613 : f32 = u_xlat16;
  u_xlat8 = (vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(x_613, x_613, x_613));
  let x_617 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_617) + 1.0f);
  let x_622 : f32 = u_xlat0.x;
  let x_624 : f32 = u_xlat0.x;
  u_xlat25 = (x_622 * x_624);
  let x_626 : f32 = u_xlat25;
  let x_627 : f32 = u_xlat25;
  u_xlat25 = (x_626 * x_627);
  let x_630 : f32 = u_xlat0.x;
  let x_631 : f32 = u_xlat25;
  u_xlat0.x = (x_630 * x_631);
  let x_634 : vec4<f32> = u_xlat7;
  u_xlat2 = (-(vec3<f32>(x_634.x, x_634.y, x_634.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_639 : vec3<f32> = u_xlat2;
  let x_640 : vec3<f32> = u_xlat0;
  let x_643 : vec4<f32> = u_xlat7;
  u_xlat2 = ((x_639 * vec3<f32>(x_640.x, x_640.x, x_640.x)) + vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec3<f32> = u_xlat8;
  let x_647 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_646 * x_647);
  let x_651 : vec3<f32> = u_xlat3;
  let x_652 : vec3<f32> = u_xlat1;
  let x_654 : vec3<f32> = u_xlat0;
  let x_655 : vec3<f32> = ((x_651 * x_652) + x_654);
  let x_656 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

