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
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_NoiseStrength : f32,
  @size(12)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat27 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat28 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(13) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> u_xlat29 : f32;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(14) var sampler_Gradient : sampler;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlatb28 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(8) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb29 : bool;

@group(0) @binding(6) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

@group(0) @binding(7) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb27 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_317 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat27;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD4;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat28 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat28;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_69 : vec4<f32> = vs_TEXCOORD0;
  let x_71 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_69.x, x_69.y));
  u_xlat28 = x_71.x;
  let x_82 : vec4<f32> = vs_TEXCOORD0;
  let x_84 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_82.z, x_82.w));
  let x_85 : vec2<f32> = vec2<f32>(x_84.x, x_84.w);
  let x_86 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_94 : vec4<f32> = vs_TEXCOORD0;
  let x_96 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_94.z, x_94.w));
  u_xlat29 = x_96.x;
  let x_100 : f32 = u_xlat29;
  u_xlat21.x = (-(x_100) + 1.0f);
  let x_105 : f32 = u_xlat28;
  let x_107 : f32 = u_xlat21.x;
  u_xlat28 = (x_105 * x_107);
  let x_109 : f32 = u_xlat28;
  let x_113 : f32 = x_18.x_NoiseStrength;
  let x_115 : f32 = u_xlat29;
  u_xlat28 = ((x_109 * x_113) + x_115);
  let x_117 : f32 = u_xlat28;
  u_xlat28 = (-(x_117) + 1.0f);
  let x_120 : f32 = u_xlat28;
  let x_123 : f32 = x_18.x_Cutoff;
  u_xlat28 = (x_120 + -(x_123));
  let x_128 : f32 = x_18.x_EdgeSize;
  u_xlat29 = (1.0f / -(x_128));
  let x_131 : f32 = u_xlat28;
  let x_132 : f32 = u_xlat29;
  u_xlat28 = (x_131 * x_132);
  let x_134 : f32 = u_xlat28;
  u_xlat28 = clamp(x_134, 0.0f, 1.0f);
  let x_137 : f32 = u_xlat28;
  u_xlat29 = ((x_137 * -2.0f) + 3.0f);
  let x_142 : f32 = u_xlat28;
  let x_143 : f32 = u_xlat28;
  u_xlat28 = (x_142 * x_143);
  let x_151 : vec4<f32> = vs_TEXCOORD0;
  let x_153 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_151.z, x_151.w));
  u_xlat4 = vec3<f32>(x_153.x, x_153.y, x_153.z);
  let x_156 : vec3<f32> = u_xlat4;
  let x_159 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (x_156 * vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_168 : vec4<f32> = vs_TEXCOORD0;
  let x_170 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_168.z, x_168.w));
  u_xlat6 = vec3<f32>(x_170.x, x_170.y, x_170.w);
  let x_174 : f32 = u_xlat6.z;
  let x_176 : f32 = u_xlat6.x;
  u_xlat6.x = (x_174 * x_176);
  let x_179 : vec3<f32> = u_xlat6;
  let x_186 : vec2<f32> = ((vec2<f32>(x_179.x, x_179.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_187 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_186.x, x_186.y, x_187.z);
  let x_189 : vec3<f32> = u_xlat6;
  let x_191 : vec3<f32> = u_xlat6;
  u_xlat21.x = dot(vec2<f32>(x_189.x, x_189.y), vec2<f32>(x_191.x, x_191.y));
  let x_196 : f32 = u_xlat21.x;
  u_xlat21.x = min(x_196, 1.0f);
  let x_200 : f32 = u_xlat21.x;
  u_xlat21.x = (-(x_200) + 1.0f);
  let x_205 : f32 = u_xlat21.x;
  u_xlat6.z = sqrt(x_205);
  let x_209 : f32 = u_xlat3.x;
  let x_212 : f32 = x_18.x_Metallic;
  u_xlat3.x = (x_209 * x_212);
  let x_215 : f32 = u_xlat29;
  let x_217 : f32 = u_xlat28;
  let x_220 : f32 = x_18.x_Cutoff;
  u_xlat28 = ((-(x_215) * x_217) + -(x_220));
  let x_223 : f32 = u_xlat28;
  u_xlat28 = (x_223 + 1.0f);
  let x_228 : f32 = u_xlat28;
  u_xlatb28 = (x_228 < 0.0f);
  let x_230 : bool = u_xlatb28;
  if (((select(0i, 1i, x_230) * -1i) != 0i)) {
    discard;
  }
  let x_239 : vec3<f32> = vs_TEXCOORD4;
  let x_243 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat7 = (vec4<f32>(x_239.y, x_239.y, x_239.y, x_239.y) * x_243);
  let x_246 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_247 : vec3<f32> = vs_TEXCOORD4;
  let x_250 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_246 * vec4<f32>(x_247.x, x_247.x, x_247.x, x_247.x)) + x_250);
  let x_254 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_255 : vec3<f32> = vs_TEXCOORD4;
  let x_258 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_254 * vec4<f32>(x_255.z, x_255.z, x_255.z, x_255.z)) + x_258);
  let x_260 : vec4<f32> = u_xlat7;
  let x_263 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat7 = (x_260 + x_263);
  let x_266 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb28 = (x_266 == 1.0f);
  let x_268 : bool = u_xlatb28;
  if (x_268) {
    let x_273 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb28 = (x_273 == 1.0f);
    let x_276 : vec3<f32> = vs_TEXCOORD4;
    let x_280 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_282 : vec3<f32> = (vec3<f32>(x_276.y, x_276.y, x_276.y) * vec3<f32>(x_280.x, x_280.y, x_280.z));
    let x_283 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
    let x_286 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_288 : vec3<f32> = vs_TEXCOORD4;
    let x_291 : vec4<f32> = u_xlat8;
    let x_293 : vec3<f32> = ((vec3<f32>(x_286.x, x_286.y, x_286.z) * vec3<f32>(x_288.x, x_288.x, x_288.x)) + vec3<f32>(x_291.x, x_291.y, x_291.z));
    let x_294 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
    let x_297 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_299 : vec3<f32> = vs_TEXCOORD4;
    let x_302 : vec4<f32> = u_xlat8;
    let x_304 : vec3<f32> = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.z, x_299.z, x_299.z)) + vec3<f32>(x_302.x, x_302.y, x_302.z));
    let x_305 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
    let x_307 : vec4<f32> = u_xlat8;
    let x_310 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_312 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) + vec3<f32>(x_310.x, x_310.y, x_310.z));
    let x_313 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
    let x_315 : bool = u_xlatb28;
    if (x_315) {
      let x_320 : vec4<f32> = u_xlat8;
      x_317 = vec3<f32>(x_320.x, x_320.y, x_320.z);
    } else {
      let x_323 : vec3<f32> = vs_TEXCOORD4;
      x_317 = x_323;
    }
    let x_324 : vec3<f32> = x_317;
    let x_325 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
    let x_327 : vec4<f32> = u_xlat8;
    let x_331 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_333 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) + -(x_331));
    let x_334 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
    let x_336 : vec4<f32> = u_xlat8;
    let x_340 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_341 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) * x_340);
    let x_342 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_342.x, x_341.x, x_341.y, x_341.z);
    let x_345 : f32 = u_xlat8.y;
    u_xlat28 = ((x_345 * 0.25f) + 0.75f);
    let x_351 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat29 = ((x_351 * 0.5f) + 0.75f);
    let x_355 : f32 = u_xlat28;
    let x_356 : f32 = u_xlat29;
    u_xlat8.x = max(x_355, x_356);
    let x_367 : vec4<f32> = u_xlat8;
    let x_369 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_367.x, x_367.z, x_367.w));
    u_xlat8 = x_369;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_376 : vec4<f32> = u_xlat8;
  let x_378 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat28 = dot(x_376, x_378);
  let x_380 : f32 = u_xlat28;
  u_xlat28 = clamp(x_380, 0.0f, 1.0f);
  let x_384 : f32 = u_xlat7.z;
  u_xlatb29 = (0.0f < x_384);
  let x_386 : bool = u_xlatb29;
  u_xlat29 = select(0.0f, 1.0f, x_386);
  let x_388 : vec4<f32> = u_xlat7;
  let x_390 : vec4<f32> = u_xlat7;
  u_xlat21 = (vec2<f32>(x_388.x, x_388.y) / vec2<f32>(x_390.w, x_390.w));
  let x_393 : vec2<f32> = u_xlat21;
  u_xlat21 = (x_393 + vec2<f32>(0.5f, 0.5f));
  let x_401 : vec2<f32> = u_xlat21;
  let x_402 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_401);
  u_xlat21.x = x_402.w;
  let x_405 : f32 = u_xlat29;
  let x_407 : f32 = u_xlat21.x;
  u_xlat29 = (x_405 * x_407);
  let x_409 : vec4<f32> = u_xlat7;
  let x_411 : vec4<f32> = u_xlat7;
  u_xlat21.x = dot(vec3<f32>(x_409.x, x_409.y, x_409.z), vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_420 : vec2<f32> = u_xlat21;
  let x_422 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_420.x, x_420.x));
  u_xlat21.x = x_422.x;
  let x_425 : f32 = u_xlat29;
  let x_427 : f32 = u_xlat21.x;
  u_xlat29 = (x_425 * x_427);
  let x_429 : f32 = u_xlat28;
  let x_430 : f32 = u_xlat29;
  u_xlat28 = (x_429 * x_430);
  let x_433 : vec3<f32> = vs_TEXCOORD1;
  let x_434 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_433, x_434);
  let x_438 : vec3<f32> = vs_TEXCOORD2;
  let x_439 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_438, x_439);
  let x_443 : vec3<f32> = vs_TEXCOORD3;
  let x_444 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_443, x_444);
  let x_447 : vec4<f32> = u_xlat7;
  let x_449 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_447.x, x_447.y, x_447.z), vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_452);
  let x_454 : f32 = u_xlat29;
  let x_456 : vec4<f32> = u_xlat7;
  u_xlat6 = (vec3<f32>(x_454, x_454, x_454) * vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_459 : f32 = u_xlat28;
  let x_463 : vec4<f32> = x_18.x_LightColor0;
  let x_465 : vec3<f32> = (vec3<f32>(x_459, x_459, x_459) * vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec3<f32> = u_xlat4;
  let x_470 : vec4<f32> = x_18.x_Color;
  u_xlat4 = ((x_468 * vec3<f32>(x_470.x, x_470.y, x_470.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_476 : vec4<f32> = u_xlat3;
  let x_478 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_476.x, x_476.x, x_476.x) * x_478) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_484 : f32 = u_xlat3.x;
  u_xlat28 = ((-(x_484) * 0.959999979f) + 0.959999979f);
  let x_489 : f32 = u_xlat28;
  let x_491 : vec3<f32> = u_xlat5;
  let x_492 : vec3<f32> = (vec3<f32>(x_489, x_489, x_489) * x_491);
  let x_493 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_492.x, x_493.y, x_492.y, x_492.z);
  let x_496 : f32 = u_xlat3.y;
  let x_500 : f32 = x_18.x_Glossiness;
  u_xlat28 = ((-(x_496) * x_500) + 1.0f);
  let x_503 : vec3<f32> = u_xlat0;
  let x_504 : f32 = u_xlat27;
  let x_507 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_503 * vec3<f32>(x_504, x_504, x_504)) + x_507);
  let x_509 : vec3<f32> = u_xlat0;
  let x_510 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_509, x_510);
  let x_512 : f32 = u_xlat27;
  u_xlat27 = max(x_512, 0.001f);
  let x_515 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_515);
  let x_517 : f32 = u_xlat27;
  let x_519 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_517, x_517, x_517) * x_519);
  let x_521 : vec3<f32> = u_xlat6;
  let x_522 : vec3<f32> = u_xlat2;
  u_xlat27 = dot(x_521, x_522);
  let x_524 : vec3<f32> = u_xlat6;
  let x_525 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_524, x_525);
  let x_529 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_529, 0.0f, 1.0f);
  let x_533 : vec3<f32> = u_xlat6;
  let x_534 : vec3<f32> = u_xlat0;
  u_xlat11 = dot(x_533, x_534);
  let x_536 : f32 = u_xlat11;
  u_xlat11 = clamp(x_536, 0.0f, 1.0f);
  let x_538 : vec3<f32> = u_xlat1;
  let x_539 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_538, x_539);
  let x_543 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_543, 0.0f, 1.0f);
  let x_548 : f32 = u_xlat0.x;
  let x_550 : f32 = u_xlat0.x;
  u_xlat9.x = (x_548 * x_550);
  let x_553 : vec3<f32> = u_xlat9;
  let x_555 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_553.x, x_553.x), vec2<f32>(x_555, x_555));
  let x_560 : f32 = u_xlat9.x;
  u_xlat9.x = (x_560 + -0.5f);
  let x_566 : f32 = u_xlat2.x;
  u_xlat18 = (-(x_566) + 1.0f);
  let x_569 : f32 = u_xlat18;
  let x_570 : f32 = u_xlat18;
  u_xlat1.x = (x_569 * x_570);
  let x_574 : f32 = u_xlat1.x;
  let x_576 : f32 = u_xlat1.x;
  u_xlat1.x = (x_574 * x_576);
  let x_579 : f32 = u_xlat18;
  let x_581 : f32 = u_xlat1.x;
  u_xlat18 = (x_579 * x_581);
  let x_584 : f32 = u_xlat9.x;
  let x_585 : f32 = u_xlat18;
  u_xlat18 = ((x_584 * x_585) + 1.0f);
  let x_588 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_588)) + 1.0f);
  let x_595 : f32 = u_xlat1.x;
  let x_597 : f32 = u_xlat1.x;
  u_xlat10 = (x_595 * x_597);
  let x_599 : f32 = u_xlat10;
  let x_600 : f32 = u_xlat10;
  u_xlat10 = (x_599 * x_600);
  let x_603 : f32 = u_xlat1.x;
  let x_604 : f32 = u_xlat10;
  u_xlat1.x = (x_603 * x_604);
  let x_608 : f32 = u_xlat9.x;
  let x_610 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_608 * x_610) + 1.0f);
  let x_615 : f32 = u_xlat9.x;
  let x_616 : f32 = u_xlat18;
  u_xlat9.x = (x_615 * x_616);
  let x_619 : f32 = u_xlat28;
  let x_620 : f32 = u_xlat28;
  u_xlat18 = (x_619 * x_620);
  let x_622 : f32 = u_xlat18;
  u_xlat18 = max(x_622, 0.002f);
  let x_625 : f32 = u_xlat18;
  u_xlat1.x = (-(x_625) + 1.0f);
  let x_629 : f32 = u_xlat27;
  let x_632 : f32 = u_xlat1.x;
  let x_634 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_629) * x_632) + x_634);
  let x_637 : f32 = u_xlat2.x;
  let x_639 : f32 = u_xlat1.x;
  let x_641 : f32 = u_xlat18;
  u_xlat1.x = ((x_637 * x_639) + x_641);
  let x_644 : f32 = u_xlat27;
  let x_647 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_644) * x_647);
  let x_650 : f32 = u_xlat2.x;
  let x_651 : f32 = u_xlat10;
  let x_653 : f32 = u_xlat27;
  u_xlat27 = ((x_650 * x_651) + x_653);
  let x_655 : f32 = u_xlat27;
  u_xlat27 = (x_655 + 0.00001f);
  let x_658 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_658);
  let x_660 : f32 = u_xlat18;
  let x_661 : f32 = u_xlat18;
  u_xlat18 = (x_660 * x_661);
  let x_663 : f32 = u_xlat11;
  let x_664 : f32 = u_xlat18;
  let x_666 : f32 = u_xlat11;
  u_xlat1.x = ((x_663 * x_664) + -(x_666));
  let x_671 : f32 = u_xlat1.x;
  let x_672 : f32 = u_xlat11;
  u_xlat1.x = ((x_671 * x_672) + 1.0f);
  let x_676 : f32 = u_xlat18;
  u_xlat18 = (x_676 * 0.318309873f);
  let x_680 : f32 = u_xlat1.x;
  let x_682 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_680 * x_682) + 0.0000001f);
  let x_687 : f32 = u_xlat18;
  let x_689 : f32 = u_xlat1.x;
  u_xlat18 = (x_687 / x_689);
  let x_691 : f32 = u_xlat18;
  let x_692 : f32 = u_xlat27;
  u_xlat9.y = (x_691 * x_692);
  let x_695 : vec3<f32> = u_xlat2;
  let x_697 : vec3<f32> = u_xlat9;
  let x_699 : vec2<f32> = (vec2<f32>(x_695.x, x_695.x) * vec2<f32>(x_697.x, x_697.y));
  let x_700 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_699.x, x_699.y, x_700.z);
  let x_703 : f32 = u_xlat9.y;
  u_xlat18 = (x_703 * 3.141592741f);
  let x_706 : f32 = u_xlat18;
  u_xlat18 = max(x_706, 0.0f);
  let x_708 : vec3<f32> = u_xlat4;
  let x_709 : vec3<f32> = u_xlat4;
  u_xlat27 = dot(x_708, x_709);
  let x_712 : f32 = u_xlat27;
  u_xlatb27 = !((x_712 == 0.0f));
  let x_714 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_714);
  let x_716 : f32 = u_xlat27;
  let x_717 : f32 = u_xlat18;
  u_xlat18 = (x_716 * x_717);
  let x_719 : vec3<f32> = u_xlat9;
  let x_721 : vec4<f32> = u_xlat7;
  u_xlat1 = (vec3<f32>(x_719.x, x_719.x, x_719.x) * vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : vec4<f32> = u_xlat7;
  let x_726 : f32 = u_xlat18;
  u_xlat9 = (vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(x_726, x_726, x_726));
  let x_730 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_730) + 1.0f);
  let x_735 : f32 = u_xlat0.x;
  let x_737 : f32 = u_xlat0.x;
  u_xlat28 = (x_735 * x_737);
  let x_739 : f32 = u_xlat28;
  let x_740 : f32 = u_xlat28;
  u_xlat28 = (x_739 * x_740);
  let x_743 : f32 = u_xlat0.x;
  let x_744 : f32 = u_xlat28;
  u_xlat0.x = (x_743 * x_744);
  let x_747 : vec3<f32> = u_xlat4;
  u_xlat2 = (-(x_747) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_751 : vec3<f32> = u_xlat2;
  let x_752 : vec3<f32> = u_xlat0;
  let x_755 : vec3<f32> = u_xlat4;
  u_xlat2 = ((x_751 * vec3<f32>(x_752.x, x_752.x, x_752.x)) + x_755);
  let x_757 : vec3<f32> = u_xlat9;
  let x_758 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_757 * x_758);
  let x_762 : vec4<f32> = u_xlat3;
  let x_764 : vec3<f32> = u_xlat1;
  let x_766 : vec3<f32> = u_xlat0;
  let x_767 : vec3<f32> = ((vec3<f32>(x_762.x, x_762.z, x_762.w) * x_764) + x_766);
  let x_768 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

