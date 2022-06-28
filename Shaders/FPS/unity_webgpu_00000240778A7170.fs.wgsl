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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb22 : bool;

var<private> u_xlat23 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat17 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_214 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_32 : f32 = u_xlat0.w;
  let x_42 : f32 = x_37.x_Color.w;
  SV_Target0.w = (x_32 * x_42);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_37.x_Color;
  u_xlat1 = (vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_56 : vec4<f32> = x_37.x_Color;
  let x_58 : vec4<f32> = u_xlat0;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.y, x_58.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_68 : f32 = x_37.x_Metallic;
  let x_70 : f32 = x_37.x_Metallic;
  let x_72 : f32 = x_37.x_Metallic;
  let x_73 : vec3<f32> = vec3<f32>(x_68, x_70, x_72);
  let x_78 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = ((vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_78.x, x_78.y, x_78.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : f32 = x_37.x_Metallic;
  u_xlat21 = ((-(x_88) * 0.959999979f) + 0.959999979f);
  let x_93 : f32 = u_xlat21;
  let x_95 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_93, x_93, x_93) * x_95);
  let x_98 : vec4<f32> = vs_TEXCOORD4;
  let x_100 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_103);
  let x_106 : f32 = u_xlat21;
  let x_108 : vec4<f32> = vs_TEXCOORD4;
  let x_110 : vec3<f32> = (vec3<f32>(x_106, x_106, x_106) * vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_114 : vec4<f32> = vs_TEXCOORD1;
  let x_116 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_114.x, x_114.y, x_114.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_119);
  let x_122 : f32 = u_xlat21;
  let x_124 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_122, x_122, x_122) * vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_130 : vec3<f32> = vs_TEXCOORD5;
  let x_135 : vec4<f32> = x_37.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_130.y, x_130.y, x_130.y, x_130.y) * x_135);
  let x_139 : vec4<f32> = x_37.unity_WorldToLight[0i];
  let x_140 : vec3<f32> = vs_TEXCOORD5;
  let x_143 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_139 * vec4<f32>(x_140.x, x_140.x, x_140.x, x_140.x)) + x_143);
  let x_147 : vec4<f32> = x_37.unity_WorldToLight[2i];
  let x_148 : vec3<f32> = vs_TEXCOORD5;
  let x_151 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_147 * vec4<f32>(x_148.z, x_148.z, x_148.z, x_148.z)) + x_151);
  let x_153 : vec4<f32> = u_xlat4;
  let x_156 : vec4<f32> = x_37.unity_WorldToLight[3i];
  u_xlat4 = (x_153 + x_156);
  let x_163 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_163 == 1.0f);
  let x_166 : bool = u_xlatb21;
  if (x_166) {
    let x_171 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_171 == 1.0f);
    let x_174 : vec3<f32> = vs_TEXCOORD5;
    let x_177 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_179 : vec3<f32> = (vec3<f32>(x_174.y, x_174.y, x_174.y) * vec3<f32>(x_177.x, x_177.y, x_177.z));
    let x_180 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_183 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_185 : vec3<f32> = vs_TEXCOORD5;
    let x_188 : vec4<f32> = u_xlat5;
    let x_190 : vec3<f32> = ((vec3<f32>(x_183.x, x_183.y, x_183.z) * vec3<f32>(x_185.x, x_185.x, x_185.x)) + vec3<f32>(x_188.x, x_188.y, x_188.z));
    let x_191 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
    let x_194 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_196 : vec3<f32> = vs_TEXCOORD5;
    let x_199 : vec4<f32> = u_xlat5;
    let x_201 : vec3<f32> = ((vec3<f32>(x_194.x, x_194.y, x_194.z) * vec3<f32>(x_196.z, x_196.z, x_196.z)) + vec3<f32>(x_199.x, x_199.y, x_199.z));
    let x_202 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
    let x_204 : vec4<f32> = u_xlat5;
    let x_207 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_209 : vec3<f32> = (vec3<f32>(x_204.x, x_204.y, x_204.z) + vec3<f32>(x_207.x, x_207.y, x_207.z));
    let x_210 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
    let x_212 : bool = u_xlatb21;
    if (x_212) {
      let x_217 : vec4<f32> = u_xlat5;
      x_214 = vec3<f32>(x_217.x, x_217.y, x_217.z);
    } else {
      let x_220 : vec3<f32> = vs_TEXCOORD5;
      x_214 = x_220;
    }
    let x_221 : vec3<f32> = x_214;
    let x_222 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
    let x_224 : vec4<f32> = u_xlat5;
    let x_229 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_231 : vec3<f32> = (vec3<f32>(x_224.x, x_224.y, x_224.z) + -(x_229));
    let x_232 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
    let x_234 : vec4<f32> = u_xlat5;
    let x_237 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_238 : vec3<f32> = (vec3<f32>(x_234.x, x_234.y, x_234.z) * x_237);
    let x_239 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_239.x, x_238.x, x_238.y, x_238.z);
    let x_242 : f32 = u_xlat5.y;
    u_xlat21 = ((x_242 * 0.25f) + 0.75f);
    let x_250 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_250 * 0.5f) + 0.75f);
    let x_254 : f32 = u_xlat21;
    let x_255 : f32 = u_xlat22;
    u_xlat5.x = max(x_254, x_255);
    let x_266 : vec4<f32> = u_xlat5;
    let x_268 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_266.x, x_266.z, x_266.w));
    u_xlat5 = x_268;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_274 : vec4<f32> = u_xlat5;
  let x_276 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_274, x_276);
  let x_278 : f32 = u_xlat21;
  u_xlat21 = clamp(x_278, 0.0f, 1.0f);
  let x_283 : f32 = u_xlat4.z;
  u_xlatb22 = (0.0f < x_283);
  let x_285 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_285);
  let x_287 : vec4<f32> = u_xlat4;
  let x_289 : vec4<f32> = u_xlat4;
  let x_291 : vec2<f32> = (vec2<f32>(x_287.x, x_287.y) / vec2<f32>(x_289.w, x_289.w));
  let x_292 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_291.x, x_291.y, x_292.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat5;
  let x_297 : vec2<f32> = (vec2<f32>(x_294.x, x_294.y) + vec2<f32>(0.5f, 0.5f));
  let x_298 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_297.x, x_297.y, x_298.z, x_298.w);
  let x_306 : vec4<f32> = u_xlat5;
  let x_308 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_306.x, x_306.y));
  u_xlat23 = x_308.w;
  let x_310 : f32 = u_xlat22;
  let x_311 : f32 = u_xlat23;
  u_xlat22 = (x_310 * x_311);
  let x_313 : vec4<f32> = u_xlat4;
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_313.x, x_313.y, x_313.z), vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_323 : f32 = u_xlat23;
  let x_325 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_323, x_323));
  u_xlat23 = x_325.x;
  let x_327 : f32 = u_xlat22;
  let x_328 : f32 = u_xlat23;
  u_xlat22 = (x_327 * x_328);
  let x_330 : f32 = u_xlat21;
  let x_331 : f32 = u_xlat22;
  u_xlat21 = (x_330 * x_331);
  let x_336 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_336;
  let x_340 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_340;
  let x_343 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_343;
  let x_345 : vec4<f32> = u_xlat4;
  let x_347 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_350);
  let x_352 : f32 = u_xlat22;
  let x_354 : vec4<f32> = u_xlat4;
  let x_356 : vec3<f32> = (vec3<f32>(x_352, x_352, x_352) * vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_360 : f32 = u_xlat21;
  let x_364 : vec4<f32> = x_37.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_360, x_360, x_360) * vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_369 : f32 = x_37.x_Glossiness;
  u_xlat21 = (-(x_369) + 1.0f);
  let x_372 : vec4<f32> = u_xlat4;
  let x_374 : f32 = u_xlat22;
  let x_377 : vec3<f32> = u_xlat3;
  let x_379 : vec3<f32> = ((vec3<f32>(x_372.x, x_372.y, x_372.z) * vec3<f32>(x_374, x_374, x_374)) + -(x_377));
  let x_380 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat4;
  let x_384 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_382.x, x_382.y, x_382.z), vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : f32 = u_xlat22;
  u_xlat22 = max(x_387, 0.001f);
  let x_390 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_390);
  let x_392 : f32 = u_xlat22;
  let x_394 : vec4<f32> = u_xlat4;
  let x_396 : vec3<f32> = (vec3<f32>(x_392, x_392, x_392) * vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat2;
  let x_401 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_399.x, x_399.y, x_399.z), -(x_401));
  let x_404 : vec4<f32> = u_xlat2;
  let x_406 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_404.x, x_404.y, x_404.z), vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : f32 = u_xlat23;
  u_xlat23 = clamp(x_409, 0.0f, 1.0f);
  let x_411 : vec4<f32> = u_xlat2;
  let x_413 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_411.x, x_411.y, x_411.z), vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_418 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_418, 0.0f, 1.0f);
  let x_422 : vec4<f32> = u_xlat5;
  let x_424 : vec4<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_422.x, x_422.y, x_422.z), vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : f32 = u_xlat9;
  u_xlat9 = clamp(x_427, 0.0f, 1.0f);
  let x_430 : f32 = u_xlat9;
  let x_431 : f32 = u_xlat9;
  u_xlat16 = (x_430 * x_431);
  let x_433 : f32 = u_xlat16;
  let x_435 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_433, x_433), vec2<f32>(x_435, x_435));
  let x_438 : f32 = u_xlat16;
  u_xlat16 = (x_438 + -0.5f);
  let x_441 : f32 = u_xlat23;
  u_xlat3.x = (-(x_441) + 1.0f);
  let x_447 : f32 = u_xlat3.x;
  let x_449 : f32 = u_xlat3.x;
  u_xlat10 = (x_447 * x_449);
  let x_451 : f32 = u_xlat10;
  let x_452 : f32 = u_xlat10;
  u_xlat10 = (x_451 * x_452);
  let x_455 : f32 = u_xlat3.x;
  let x_456 : f32 = u_xlat10;
  u_xlat3.x = (x_455 * x_456);
  let x_459 : f32 = u_xlat16;
  let x_461 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_459 * x_461) + 1.0f);
  let x_465 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_465)) + 1.0f);
  let x_470 : f32 = u_xlat10;
  let x_471 : f32 = u_xlat10;
  u_xlat17 = (x_470 * x_471);
  let x_473 : f32 = u_xlat17;
  let x_474 : f32 = u_xlat17;
  u_xlat17 = (x_473 * x_474);
  let x_476 : f32 = u_xlat10;
  let x_477 : f32 = u_xlat17;
  u_xlat10 = (x_476 * x_477);
  let x_479 : f32 = u_xlat16;
  let x_480 : f32 = u_xlat10;
  u_xlat16 = ((x_479 * x_480) + 1.0f);
  let x_483 : f32 = u_xlat16;
  let x_485 : f32 = u_xlat3.x;
  u_xlat16 = (x_483 * x_485);
  let x_487 : f32 = u_xlat23;
  let x_488 : f32 = u_xlat16;
  u_xlat16 = (x_487 * x_488);
  let x_490 : f32 = u_xlat21;
  let x_491 : f32 = u_xlat21;
  u_xlat21 = (x_490 * x_491);
  let x_493 : f32 = u_xlat21;
  u_xlat21 = max(x_493, 0.002f);
  let x_496 : f32 = u_xlat21;
  u_xlat3.x = (-(x_496) + 1.0f);
  let x_500 : f32 = u_xlat22;
  let x_503 : f32 = u_xlat3.x;
  let x_505 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_500) * x_503) + x_505);
  let x_507 : f32 = u_xlat23;
  let x_509 : f32 = u_xlat3.x;
  let x_511 : f32 = u_xlat21;
  u_xlat3.x = ((x_507 * x_509) + x_511);
  let x_514 : f32 = u_xlat22;
  let x_517 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_514) * x_517);
  let x_519 : f32 = u_xlat23;
  let x_520 : f32 = u_xlat10;
  let x_522 : f32 = u_xlat22;
  u_xlat22 = ((x_519 * x_520) + x_522);
  let x_524 : f32 = u_xlat22;
  u_xlat22 = (x_524 + 0.00001f);
  let x_527 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_527);
  let x_529 : f32 = u_xlat21;
  let x_530 : f32 = u_xlat21;
  u_xlat21 = (x_529 * x_530);
  let x_533 : f32 = u_xlat2.x;
  let x_534 : f32 = u_xlat21;
  let x_537 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_533 * x_534) + -(x_537));
  let x_542 : f32 = u_xlat3.x;
  let x_544 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_542 * x_544) + 1.0f);
  let x_548 : f32 = u_xlat21;
  u_xlat21 = (x_548 * 0.318309873f);
  let x_552 : f32 = u_xlat2.x;
  let x_554 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_552 * x_554) + 0.0000001f);
  let x_559 : f32 = u_xlat21;
  let x_561 : f32 = u_xlat2.x;
  u_xlat21 = (x_559 / x_561);
  let x_563 : f32 = u_xlat21;
  let x_564 : f32 = u_xlat22;
  u_xlat21 = (x_563 * x_564);
  let x_566 : f32 = u_xlat23;
  let x_567 : f32 = u_xlat21;
  u_xlat21 = (x_566 * x_567);
  let x_569 : f32 = u_xlat21;
  u_xlat21 = (x_569 * 3.141592741f);
  let x_572 : f32 = u_xlat21;
  u_xlat21 = max(x_572, 0.0f);
  let x_574 : vec4<f32> = u_xlat0;
  let x_576 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_574.x, x_574.y, x_574.z), vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : f32 = u_xlat22;
  u_xlatb22 = !((x_579 == 0.0f));
  let x_581 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_581);
  let x_583 : f32 = u_xlat21;
  let x_584 : f32 = u_xlat22;
  u_xlat21 = (x_583 * x_584);
  let x_586 : f32 = u_xlat16;
  let x_588 : vec3<f32> = u_xlat6;
  let x_589 : vec3<f32> = (vec3<f32>(x_586, x_586, x_586) * x_588);
  let x_590 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_589.x, x_590.y, x_589.y, x_589.z);
  let x_592 : vec3<f32> = u_xlat6;
  let x_593 : f32 = u_xlat21;
  u_xlat3 = (x_592 * vec3<f32>(x_593, x_593, x_593));
  let x_596 : f32 = u_xlat9;
  u_xlat21 = (-(x_596) + 1.0f);
  let x_599 : f32 = u_xlat21;
  let x_600 : f32 = u_xlat21;
  u_xlat22 = (x_599 * x_600);
  let x_602 : f32 = u_xlat22;
  let x_603 : f32 = u_xlat22;
  u_xlat22 = (x_602 * x_603);
  let x_605 : f32 = u_xlat21;
  let x_606 : f32 = u_xlat22;
  u_xlat21 = (x_605 * x_606);
  let x_608 : vec4<f32> = u_xlat0;
  let x_612 : vec3<f32> = (-(vec3<f32>(x_608.x, x_608.y, x_608.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_613 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat4;
  let x_617 : f32 = u_xlat21;
  let x_620 : vec4<f32> = u_xlat0;
  let x_622 : vec3<f32> = ((vec3<f32>(x_615.x, x_615.y, x_615.z) * vec3<f32>(x_617, x_617, x_617)) + vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_623 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat0;
  let x_627 : vec3<f32> = u_xlat3;
  let x_628 : vec3<f32> = (vec3<f32>(x_625.x, x_625.y, x_625.z) * x_627);
  let x_629 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec3<f32> = u_xlat1;
  let x_632 : vec4<f32> = u_xlat2;
  let x_635 : vec4<f32> = u_xlat0;
  let x_637 : vec3<f32> = ((x_631 * vec3<f32>(x_632.x, x_632.z, x_632.w)) + vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
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

