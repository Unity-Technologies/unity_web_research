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
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(4)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb21 : bool;
  var u_xlat5 : vec4<f32>;
  var x_273 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var u_xlat23 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat21 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat21;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_86 : vec4<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_86.x, x_86.y));
  let x_89 : vec3<f32> = vec3<f32>(x_88.x, x_88.y, x_88.w);
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_95 : f32 = u_xlat2.z;
  let x_98 : f32 = u_xlat2.x;
  u_xlat2.x = (x_95 * x_98);
  let x_101 : vec4<f32> = u_xlat2;
  let x_108 : vec2<f32> = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_111 : vec4<f32> = u_xlat2;
  let x_115 : f32 = x_33.x_BumpScale;
  let x_117 : vec2<f32> = (vec2<f32>(x_111.x, x_111.y) * vec2<f32>(x_115, x_115));
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_118.w);
  let x_120 : vec4<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec2<f32>(x_120.x, x_120.y), vec2<f32>(x_122.x, x_122.y));
  let x_125 : f32 = u_xlat21;
  u_xlat21 = min(x_125, 1.0f);
  let x_128 : f32 = u_xlat21;
  u_xlat21 = (-(x_128) + 1.0f);
  let x_131 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_131);
  let x_134 : vec4<f32> = u_xlat2;
  let x_137 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_134.y, x_134.y, x_134.y) * vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_141 : vec4<f32> = vs_TEXCOORD2;
  let x_143 : vec4<f32> = u_xlat2;
  let x_146 : vec3<f32> = u_xlat9;
  let x_147 : vec3<f32> = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + x_146);
  let x_148 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = vs_TEXCOORD4;
  let x_153 : f32 = u_xlat21;
  let x_156 : vec4<f32> = u_xlat2;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153, x_153, x_153)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat2;
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_166);
  let x_168 : f32 = u_xlat21;
  let x_170 : vec4<f32> = u_xlat2;
  let x_172 : vec3<f32> = (vec3<f32>(x_168, x_168, x_168) * vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec4<f32> = vs_TEXCOORD1;
  let x_178 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_181);
  let x_184 : f32 = u_xlat21;
  let x_186 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_184, x_184, x_184) * vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_192 : vec3<f32> = vs_TEXCOORD5;
  let x_197 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_192.y, x_192.y, x_192.y, x_192.y) * x_197);
  let x_201 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_202 : vec3<f32> = vs_TEXCOORD5;
  let x_205 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_201 * vec4<f32>(x_202.x, x_202.x, x_202.x, x_202.x)) + x_205);
  let x_209 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_210 : vec3<f32> = vs_TEXCOORD5;
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_209 * vec4<f32>(x_210.z, x_210.z, x_210.z, x_210.z)) + x_213);
  let x_215 : vec4<f32> = u_xlat4;
  let x_218 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat4 = (x_215 + x_218);
  let x_224 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_224 == 1.0f);
  let x_226 : bool = u_xlatb21;
  if (x_226) {
    let x_231 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_231 == 1.0f);
    let x_234 : vec3<f32> = vs_TEXCOORD5;
    let x_237 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_239 : vec3<f32> = (vec3<f32>(x_234.y, x_234.y, x_234.y) * vec3<f32>(x_237.x, x_237.y, x_237.z));
    let x_240 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
    let x_243 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_245 : vec3<f32> = vs_TEXCOORD5;
    let x_248 : vec4<f32> = u_xlat5;
    let x_250 : vec3<f32> = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_245.x, x_245.x, x_245.x)) + vec3<f32>(x_248.x, x_248.y, x_248.z));
    let x_251 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
    let x_254 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_256 : vec3<f32> = vs_TEXCOORD5;
    let x_259 : vec4<f32> = u_xlat5;
    let x_261 : vec3<f32> = ((vec3<f32>(x_254.x, x_254.y, x_254.z) * vec3<f32>(x_256.z, x_256.z, x_256.z)) + vec3<f32>(x_259.x, x_259.y, x_259.z));
    let x_262 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
    let x_264 : vec4<f32> = u_xlat5;
    let x_267 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_269 : vec3<f32> = (vec3<f32>(x_264.x, x_264.y, x_264.z) + vec3<f32>(x_267.x, x_267.y, x_267.z));
    let x_270 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
    let x_272 : bool = u_xlatb21;
    if (x_272) {
      let x_276 : vec4<f32> = u_xlat5;
      x_273 = vec3<f32>(x_276.x, x_276.y, x_276.z);
    } else {
      let x_279 : vec3<f32> = vs_TEXCOORD5;
      x_273 = x_279;
    }
    let x_280 : vec3<f32> = x_273;
    let x_281 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
    let x_283 : vec4<f32> = u_xlat5;
    let x_288 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_290 : vec3<f32> = (vec3<f32>(x_283.x, x_283.y, x_283.z) + -(x_288));
    let x_291 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
    let x_293 : vec4<f32> = u_xlat5;
    let x_296 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_297 : vec3<f32> = (vec3<f32>(x_293.x, x_293.y, x_293.z) * x_296);
    let x_298 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_298.x, x_297.x, x_297.y, x_297.z);
    let x_301 : f32 = u_xlat5.y;
    u_xlat21 = ((x_301 * 0.25f) + 0.75f);
    let x_308 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_308 * 0.5f) + 0.75f);
    let x_312 : f32 = u_xlat21;
    let x_313 : f32 = u_xlat22;
    u_xlat5.x = max(x_312, x_313);
    let x_324 : vec4<f32> = u_xlat5;
    let x_326 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_324.x, x_324.z, x_324.w));
    u_xlat5 = x_326;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_333 : vec4<f32> = u_xlat5;
  let x_335 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_333, x_335);
  let x_337 : f32 = u_xlat21;
  u_xlat21 = clamp(x_337, 0.0f, 1.0f);
  let x_342 : f32 = u_xlat4.z;
  u_xlatb22 = (0.0f < x_342);
  let x_344 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_344);
  let x_346 : vec4<f32> = u_xlat4;
  let x_348 : vec4<f32> = u_xlat4;
  let x_350 : vec2<f32> = (vec2<f32>(x_346.x, x_346.y) / vec2<f32>(x_348.w, x_348.w));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_351.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat5;
  let x_356 : vec2<f32> = (vec2<f32>(x_353.x, x_353.y) + vec2<f32>(0.5f, 0.5f));
  let x_357 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_356.x, x_356.y, x_357.z, x_357.w);
  let x_365 : vec4<f32> = u_xlat5;
  let x_367 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_365.x, x_365.y));
  u_xlat23 = x_367.w;
  let x_369 : f32 = u_xlat22;
  let x_370 : f32 = u_xlat23;
  u_xlat22 = (x_369 * x_370);
  let x_372 : vec4<f32> = u_xlat4;
  let x_374 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_372.x, x_372.y, x_372.z), vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_382 : f32 = u_xlat23;
  let x_384 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_382, x_382));
  u_xlat23 = x_384.x;
  let x_386 : f32 = u_xlat22;
  let x_387 : f32 = u_xlat23;
  u_xlat22 = (x_386 * x_387);
  let x_389 : f32 = u_xlat21;
  let x_390 : f32 = u_xlat22;
  u_xlat21 = (x_389 * x_390);
  let x_394 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_394;
  let x_397 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_397;
  let x_400 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_400;
  let x_402 : vec4<f32> = u_xlat4;
  let x_404 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_402.x, x_402.y, x_402.z), vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_407);
  let x_409 : f32 = u_xlat22;
  let x_411 : vec4<f32> = u_xlat4;
  let x_413 : vec3<f32> = (vec3<f32>(x_409, x_409, x_409) * vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_417 : f32 = u_xlat21;
  let x_421 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_417, x_417, x_417) * vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_426 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_426) + 1.0f);
  let x_429 : vec4<f32> = u_xlat4;
  let x_431 : f32 = u_xlat22;
  let x_434 : vec3<f32> = u_xlat3;
  let x_436 : vec3<f32> = ((vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(x_431, x_431, x_431)) + -(x_434));
  let x_437 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat4;
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_439.x, x_439.y, x_439.z), vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : f32 = u_xlat22;
  u_xlat22 = max(x_444, 0.001f);
  let x_447 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_447);
  let x_449 : f32 = u_xlat22;
  let x_451 : vec4<f32> = u_xlat4;
  let x_453 : vec3<f32> = (vec3<f32>(x_449, x_449, x_449) * vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat2;
  let x_458 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_456.x, x_456.y, x_456.z), -(x_458));
  let x_461 : vec4<f32> = u_xlat2;
  let x_463 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_461.x, x_461.y, x_461.z), vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : f32 = u_xlat23;
  u_xlat23 = clamp(x_466, 0.0f, 1.0f);
  let x_468 : vec4<f32> = u_xlat2;
  let x_470 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_468.x, x_468.y, x_468.z), vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_475 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_475, 0.0f, 1.0f);
  let x_478 : vec4<f32> = u_xlat5;
  let x_480 : vec4<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_478.x, x_478.y, x_478.z), vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_485 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_485, 0.0f, 1.0f);
  let x_490 : f32 = u_xlat9.x;
  let x_492 : f32 = u_xlat9.x;
  u_xlat16 = (x_490 * x_492);
  let x_494 : f32 = u_xlat16;
  let x_496 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_494, x_494), vec2<f32>(x_496, x_496));
  let x_499 : f32 = u_xlat16;
  u_xlat16 = (x_499 + -0.5f);
  let x_502 : f32 = u_xlat23;
  u_xlat3.x = (-(x_502) + 1.0f);
  let x_508 : f32 = u_xlat3.x;
  let x_510 : f32 = u_xlat3.x;
  u_xlat10 = (x_508 * x_510);
  let x_512 : f32 = u_xlat10;
  let x_513 : f32 = u_xlat10;
  u_xlat10 = (x_512 * x_513);
  let x_516 : f32 = u_xlat3.x;
  let x_517 : f32 = u_xlat10;
  u_xlat3.x = (x_516 * x_517);
  let x_520 : f32 = u_xlat16;
  let x_522 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_520 * x_522) + 1.0f);
  let x_526 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_526)) + 1.0f);
  let x_531 : f32 = u_xlat10;
  let x_532 : f32 = u_xlat10;
  u_xlat17 = (x_531 * x_532);
  let x_534 : f32 = u_xlat17;
  let x_535 : f32 = u_xlat17;
  u_xlat17 = (x_534 * x_535);
  let x_537 : f32 = u_xlat10;
  let x_538 : f32 = u_xlat17;
  u_xlat10 = (x_537 * x_538);
  let x_540 : f32 = u_xlat16;
  let x_541 : f32 = u_xlat10;
  u_xlat16 = ((x_540 * x_541) + 1.0f);
  let x_544 : f32 = u_xlat16;
  let x_546 : f32 = u_xlat3.x;
  u_xlat16 = (x_544 * x_546);
  let x_548 : f32 = u_xlat23;
  let x_549 : f32 = u_xlat16;
  u_xlat16 = (x_548 * x_549);
  let x_551 : f32 = u_xlat21;
  let x_552 : f32 = u_xlat21;
  u_xlat21 = (x_551 * x_552);
  let x_554 : f32 = u_xlat21;
  u_xlat21 = max(x_554, 0.002f);
  let x_557 : f32 = u_xlat21;
  u_xlat3.x = (-(x_557) + 1.0f);
  let x_561 : f32 = u_xlat22;
  let x_564 : f32 = u_xlat3.x;
  let x_566 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_561) * x_564) + x_566);
  let x_568 : f32 = u_xlat23;
  let x_570 : f32 = u_xlat3.x;
  let x_572 : f32 = u_xlat21;
  u_xlat3.x = ((x_568 * x_570) + x_572);
  let x_575 : f32 = u_xlat22;
  let x_578 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_575) * x_578);
  let x_580 : f32 = u_xlat23;
  let x_581 : f32 = u_xlat10;
  let x_583 : f32 = u_xlat22;
  u_xlat22 = ((x_580 * x_581) + x_583);
  let x_585 : f32 = u_xlat22;
  u_xlat22 = (x_585 + 0.00001f);
  let x_588 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_588);
  let x_590 : f32 = u_xlat21;
  let x_591 : f32 = u_xlat21;
  u_xlat21 = (x_590 * x_591);
  let x_594 : f32 = u_xlat2.x;
  let x_595 : f32 = u_xlat21;
  let x_598 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_594 * x_595) + -(x_598));
  let x_603 : f32 = u_xlat3.x;
  let x_605 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_603 * x_605) + 1.0f);
  let x_609 : f32 = u_xlat21;
  u_xlat21 = (x_609 * 0.318309873f);
  let x_613 : f32 = u_xlat2.x;
  let x_615 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_613 * x_615) + 0.0000001f);
  let x_620 : f32 = u_xlat21;
  let x_622 : f32 = u_xlat2.x;
  u_xlat21 = (x_620 / x_622);
  let x_624 : f32 = u_xlat21;
  let x_625 : f32 = u_xlat22;
  u_xlat21 = (x_624 * x_625);
  let x_627 : f32 = u_xlat23;
  let x_628 : f32 = u_xlat21;
  u_xlat21 = (x_627 * x_628);
  let x_630 : f32 = u_xlat21;
  u_xlat21 = (x_630 * 3.141592741f);
  let x_633 : f32 = u_xlat21;
  u_xlat21 = max(x_633, 0.0f);
  let x_635 : vec3<f32> = u_xlat0;
  let x_636 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_635, x_636);
  let x_638 : f32 = u_xlat22;
  u_xlatb22 = !((x_638 == 0.0f));
  let x_640 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_640);
  let x_642 : f32 = u_xlat21;
  let x_643 : f32 = u_xlat22;
  u_xlat21 = (x_642 * x_643);
  let x_645 : f32 = u_xlat16;
  let x_647 : vec3<f32> = u_xlat6;
  let x_648 : vec3<f32> = (vec3<f32>(x_645, x_645, x_645) * x_647);
  let x_649 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_648.x, x_649.y, x_648.y, x_648.z);
  let x_651 : vec3<f32> = u_xlat6;
  let x_652 : f32 = u_xlat21;
  u_xlat3 = (x_651 * vec3<f32>(x_652, x_652, x_652));
  let x_656 : f32 = u_xlat9.x;
  u_xlat21 = (-(x_656) + 1.0f);
  let x_659 : f32 = u_xlat21;
  let x_660 : f32 = u_xlat21;
  u_xlat22 = (x_659 * x_660);
  let x_662 : f32 = u_xlat22;
  let x_663 : f32 = u_xlat22;
  u_xlat22 = (x_662 * x_663);
  let x_665 : f32 = u_xlat21;
  let x_666 : f32 = u_xlat22;
  u_xlat21 = (x_665 * x_666);
  let x_668 : vec3<f32> = u_xlat0;
  let x_671 : vec3<f32> = (-(x_668) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_672 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : vec4<f32> = u_xlat4;
  let x_676 : f32 = u_xlat21;
  let x_679 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_674.x, x_674.y, x_674.z) * vec3<f32>(x_676, x_676, x_676)) + x_679);
  let x_681 : vec3<f32> = u_xlat0;
  let x_682 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_681 * x_682);
  let x_686 : vec3<f32> = u_xlat1;
  let x_687 : vec4<f32> = u_xlat2;
  let x_690 : vec3<f32> = u_xlat0;
  let x_691 : vec3<f32> = ((x_686 * vec3<f32>(x_687.x, x_687.z, x_687.w)) + x_690);
  let x_692 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

