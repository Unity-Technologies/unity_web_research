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
  x_GlossMapScale : f32,
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> u_xlat22 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlatb22 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat23 : f32;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb23 : bool;

var<private> u_xlat24 : f32;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

@group(0) @binding(5) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTextureB0 : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat17 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_281 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_37.x, x_37.y));
  u_xlat1 = vec3<f32>(x_39.x, x_39.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_46.x_Color;
  let x_53 : vec3<f32> = (x_42 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_54 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_53.x, x_53.y, x_53.z, x_54.w);
  let x_57 : vec4<f32> = x_46.x_Color;
  let x_59 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_59) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  let x_66 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_64.x, x_64.x, x_64.x) * x_66) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_75 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_75) * 0.959999979f) + 0.959999979f);
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = u_xlat2;
  let x_85 : vec3<f32> = (vec3<f32>(x_81.x, x_81.x, x_81.x) * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_85.x, x_86.y, x_85.y, x_85.z);
  let x_93 : vec4<f32> = vs_TEXCOORD0;
  let x_95 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec3<f32> = vec3<f32>(x_95.x, x_95.y, x_95.w);
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_101 : f32 = u_xlat2.z;
  let x_103 : f32 = u_xlat2.x;
  u_xlat2.x = (x_101 * x_103);
  let x_106 : vec4<f32> = u_xlat2;
  let x_113 : vec2<f32> = ((vec2<f32>(x_106.x, x_106.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat2;
  let x_121 : f32 = x_46.x_BumpScale;
  let x_123 : vec2<f32> = (vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_121, x_121));
  let x_124 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
  let x_127 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec2<f32>(x_127.x, x_127.y), vec2<f32>(x_129.x, x_129.y));
  let x_132 : f32 = u_xlat22;
  u_xlat22 = min(x_132, 1.0f);
  let x_135 : f32 = u_xlat22;
  u_xlat22 = (-(x_135) + 1.0f);
  let x_138 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_138);
  let x_141 : vec4<f32> = u_xlat2;
  let x_144 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_141.y, x_141.y, x_141.y) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_148 : vec4<f32> = vs_TEXCOORD2;
  let x_150 : vec4<f32> = u_xlat2;
  let x_153 : vec3<f32> = u_xlat9;
  let x_154 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + x_153);
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = vs_TEXCOORD4;
  let x_160 : f32 = u_xlat22;
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160, x_160, x_160)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat2;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_173);
  let x_175 : f32 = u_xlat22;
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = vs_TEXCOORD1;
  let x_185 : vec4<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_188);
  let x_191 : f32 = u_xlat22;
  let x_193 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_191, x_191, x_191) * vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_199 : vec3<f32> = vs_TEXCOORD5;
  let x_204 : vec4<f32> = x_46.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_199.y, x_199.y, x_199.y, x_199.y) * x_204);
  let x_208 : vec4<f32> = x_46.unity_WorldToLight[0i];
  let x_209 : vec3<f32> = vs_TEXCOORD5;
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_208 * vec4<f32>(x_209.x, x_209.x, x_209.x, x_209.x)) + x_212);
  let x_216 : vec4<f32> = x_46.unity_WorldToLight[2i];
  let x_217 : vec3<f32> = vs_TEXCOORD5;
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_216 * vec4<f32>(x_217.z, x_217.z, x_217.z, x_217.z)) + x_220);
  let x_222 : vec4<f32> = u_xlat4;
  let x_225 : vec4<f32> = x_46.unity_WorldToLight[3i];
  u_xlat4 = (x_222 + x_225);
  let x_231 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_231 == 1.0f);
  let x_233 : bool = u_xlatb22;
  if (x_233) {
    let x_238 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_238 == 1.0f);
    let x_241 : vec3<f32> = vs_TEXCOORD5;
    let x_244 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_246 : vec3<f32> = (vec3<f32>(x_241.y, x_241.y, x_241.y) * vec3<f32>(x_244.x, x_244.y, x_244.z));
    let x_247 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
    let x_250 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_252 : vec3<f32> = vs_TEXCOORD5;
    let x_255 : vec4<f32> = u_xlat5;
    let x_257 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(x_252.x, x_252.x, x_252.x)) + vec3<f32>(x_255.x, x_255.y, x_255.z));
    let x_258 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
    let x_261 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_263 : vec3<f32> = vs_TEXCOORD5;
    let x_266 : vec4<f32> = u_xlat5;
    let x_268 : vec3<f32> = ((vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_263.z, x_263.z, x_263.z)) + vec3<f32>(x_266.x, x_266.y, x_266.z));
    let x_269 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat5;
    let x_274 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_276 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) + vec3<f32>(x_274.x, x_274.y, x_274.z));
    let x_277 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
    let x_279 : bool = u_xlatb22;
    if (x_279) {
      let x_284 : vec4<f32> = u_xlat5;
      x_281 = vec3<f32>(x_284.x, x_284.y, x_284.z);
    } else {
      let x_287 : vec3<f32> = vs_TEXCOORD5;
      x_281 = x_287;
    }
    let x_288 : vec3<f32> = x_281;
    let x_289 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
    let x_291 : vec4<f32> = u_xlat5;
    let x_296 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_298 : vec3<f32> = (vec3<f32>(x_291.x, x_291.y, x_291.z) + -(x_296));
    let x_299 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
    let x_301 : vec4<f32> = u_xlat5;
    let x_304 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_305 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) * x_304);
    let x_306 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_306.x, x_305.x, x_305.y, x_305.z);
    let x_309 : f32 = u_xlat5.y;
    u_xlat22 = ((x_309 * 0.25f) + 0.75f);
    let x_316 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_316 * 0.5f) + 0.75f);
    let x_320 : f32 = u_xlat22;
    let x_321 : f32 = u_xlat23;
    u_xlat5.x = max(x_320, x_321);
    let x_332 : vec4<f32> = u_xlat5;
    let x_334 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_332.x, x_332.z, x_332.w));
    u_xlat5 = x_334;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_341 : vec4<f32> = u_xlat5;
  let x_343 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_341, x_343);
  let x_345 : f32 = u_xlat22;
  u_xlat22 = clamp(x_345, 0.0f, 1.0f);
  let x_350 : f32 = u_xlat4.z;
  u_xlatb23 = (0.0f < x_350);
  let x_352 : bool = u_xlatb23;
  u_xlat23 = select(0.0f, 1.0f, x_352);
  let x_354 : vec4<f32> = u_xlat4;
  let x_356 : vec4<f32> = u_xlat4;
  let x_358 : vec2<f32> = (vec2<f32>(x_354.x, x_354.y) / vec2<f32>(x_356.w, x_356.w));
  let x_359 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_358.x, x_358.y, x_359.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat5;
  let x_364 : vec2<f32> = (vec2<f32>(x_361.x, x_361.y) + vec2<f32>(0.5f, 0.5f));
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_365.z, x_365.w);
  let x_373 : vec4<f32> = u_xlat5;
  let x_375 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_373.x, x_373.y));
  u_xlat24 = x_375.w;
  let x_377 : f32 = u_xlat23;
  let x_378 : f32 = u_xlat24;
  u_xlat23 = (x_377 * x_378);
  let x_380 : vec4<f32> = u_xlat4;
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(vec3<f32>(x_380.x, x_380.y, x_380.z), vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_390 : f32 = u_xlat24;
  let x_392 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_390, x_390));
  u_xlat24 = x_392.x;
  let x_394 : f32 = u_xlat23;
  let x_395 : f32 = u_xlat24;
  u_xlat23 = (x_394 * x_395);
  let x_397 : f32 = u_xlat22;
  let x_398 : f32 = u_xlat23;
  u_xlat22 = (x_397 * x_398);
  let x_402 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_402;
  let x_405 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_405;
  let x_408 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_408;
  let x_410 : vec4<f32> = u_xlat4;
  let x_412 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_410.x, x_410.y, x_410.z), vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_415);
  let x_417 : f32 = u_xlat23;
  let x_419 : vec4<f32> = u_xlat4;
  let x_421 : vec3<f32> = (vec3<f32>(x_417, x_417, x_417) * vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_425 : f32 = u_xlat22;
  let x_429 : vec4<f32> = x_46.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_425, x_425, x_425) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_434 : f32 = u_xlat0.y;
  let x_438 : f32 = x_46.x_GlossMapScale;
  u_xlat7 = ((-(x_434) * x_438) + 1.0f);
  let x_441 : vec4<f32> = u_xlat4;
  let x_443 : f32 = u_xlat23;
  let x_446 : vec3<f32> = u_xlat3;
  let x_448 : vec3<f32> = ((vec3<f32>(x_441.x, x_441.y, x_441.z) * vec3<f32>(x_443, x_443, x_443)) + -(x_446));
  let x_449 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_451 : vec4<f32> = u_xlat4;
  let x_453 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_451.x, x_451.y, x_451.z), vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_456 : f32 = u_xlat22;
  u_xlat22 = max(x_456, 0.001f);
  let x_459 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_459);
  let x_461 : f32 = u_xlat22;
  let x_463 : vec4<f32> = u_xlat4;
  let x_465 : vec3<f32> = (vec3<f32>(x_461, x_461, x_461) * vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat2;
  let x_470 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_468.x, x_468.y, x_468.z), -(x_470));
  let x_473 : vec4<f32> = u_xlat2;
  let x_475 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_473.x, x_473.y, x_473.z), vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_478 : f32 = u_xlat23;
  u_xlat23 = clamp(x_478, 0.0f, 1.0f);
  let x_480 : vec4<f32> = u_xlat2;
  let x_482 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_480.x, x_480.y, x_480.z), vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_487 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_487, 0.0f, 1.0f);
  let x_490 : vec4<f32> = u_xlat5;
  let x_492 : vec4<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_490.x, x_490.y, x_490.z), vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_497 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_497, 0.0f, 1.0f);
  let x_502 : f32 = u_xlat9.x;
  let x_504 : f32 = u_xlat9.x;
  u_xlat16 = (x_502 * x_504);
  let x_506 : f32 = u_xlat16;
  let x_508 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_506, x_506), vec2<f32>(x_508, x_508));
  let x_511 : f32 = u_xlat16;
  u_xlat16 = (x_511 + -0.5f);
  let x_514 : f32 = u_xlat23;
  u_xlat3.x = (-(x_514) + 1.0f);
  let x_520 : f32 = u_xlat3.x;
  let x_522 : f32 = u_xlat3.x;
  u_xlat10 = (x_520 * x_522);
  let x_524 : f32 = u_xlat10;
  let x_525 : f32 = u_xlat10;
  u_xlat10 = (x_524 * x_525);
  let x_528 : f32 = u_xlat3.x;
  let x_529 : f32 = u_xlat10;
  u_xlat3.x = (x_528 * x_529);
  let x_532 : f32 = u_xlat16;
  let x_534 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_532 * x_534) + 1.0f);
  let x_538 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_538)) + 1.0f);
  let x_543 : f32 = u_xlat10;
  let x_544 : f32 = u_xlat10;
  u_xlat17 = (x_543 * x_544);
  let x_546 : f32 = u_xlat17;
  let x_547 : f32 = u_xlat17;
  u_xlat17 = (x_546 * x_547);
  let x_549 : f32 = u_xlat10;
  let x_550 : f32 = u_xlat17;
  u_xlat10 = (x_549 * x_550);
  let x_552 : f32 = u_xlat16;
  let x_553 : f32 = u_xlat10;
  u_xlat16 = ((x_552 * x_553) + 1.0f);
  let x_556 : f32 = u_xlat16;
  let x_558 : f32 = u_xlat3.x;
  u_xlat16 = (x_556 * x_558);
  let x_560 : f32 = u_xlat23;
  let x_561 : f32 = u_xlat16;
  u_xlat16 = (x_560 * x_561);
  let x_563 : f32 = u_xlat7;
  let x_564 : f32 = u_xlat7;
  u_xlat7 = (x_563 * x_564);
  let x_566 : f32 = u_xlat7;
  u_xlat7 = max(x_566, 0.002f);
  let x_569 : f32 = u_xlat7;
  u_xlat3.x = (-(x_569) + 1.0f);
  let x_573 : f32 = u_xlat22;
  let x_576 : f32 = u_xlat3.x;
  let x_578 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_573) * x_576) + x_578);
  let x_580 : f32 = u_xlat23;
  let x_582 : f32 = u_xlat3.x;
  let x_584 : f32 = u_xlat7;
  u_xlat3.x = ((x_580 * x_582) + x_584);
  let x_587 : f32 = u_xlat22;
  let x_590 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_587) * x_590);
  let x_592 : f32 = u_xlat23;
  let x_593 : f32 = u_xlat10;
  let x_595 : f32 = u_xlat22;
  u_xlat22 = ((x_592 * x_593) + x_595);
  let x_597 : f32 = u_xlat22;
  u_xlat22 = (x_597 + 0.00001f);
  let x_600 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_600);
  let x_602 : f32 = u_xlat7;
  let x_603 : f32 = u_xlat7;
  u_xlat7 = (x_602 * x_603);
  let x_606 : f32 = u_xlat2.x;
  let x_607 : f32 = u_xlat7;
  let x_610 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_606 * x_607) + -(x_610));
  let x_615 : f32 = u_xlat3.x;
  let x_617 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_615 * x_617) + 1.0f);
  let x_621 : f32 = u_xlat7;
  u_xlat7 = (x_621 * 0.318309873f);
  let x_625 : f32 = u_xlat2.x;
  let x_627 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_625 * x_627) + 0.0000001f);
  let x_632 : f32 = u_xlat7;
  let x_634 : f32 = u_xlat2.x;
  u_xlat7 = (x_632 / x_634);
  let x_636 : f32 = u_xlat7;
  let x_637 : f32 = u_xlat22;
  u_xlat7 = (x_636 * x_637);
  let x_639 : f32 = u_xlat23;
  let x_640 : f32 = u_xlat7;
  u_xlat7 = (x_639 * x_640);
  let x_642 : f32 = u_xlat7;
  u_xlat7 = (x_642 * 3.141592741f);
  let x_645 : f32 = u_xlat7;
  u_xlat7 = max(x_645, 0.0f);
  let x_647 : vec3<f32> = u_xlat1;
  let x_648 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_647, x_648);
  let x_650 : f32 = u_xlat22;
  u_xlatb22 = !((x_650 == 0.0f));
  let x_652 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_652);
  let x_654 : f32 = u_xlat7;
  let x_655 : f32 = u_xlat22;
  u_xlat7 = (x_654 * x_655);
  let x_657 : f32 = u_xlat16;
  let x_659 : vec3<f32> = u_xlat6;
  let x_660 : vec3<f32> = (vec3<f32>(x_657, x_657, x_657) * x_659);
  let x_661 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_660.x, x_661.y, x_660.y, x_660.z);
  let x_663 : vec3<f32> = u_xlat6;
  let x_664 : f32 = u_xlat7;
  u_xlat3 = (x_663 * vec3<f32>(x_664, x_664, x_664));
  let x_668 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_668) + 1.0f);
  let x_671 : f32 = u_xlat7;
  let x_672 : f32 = u_xlat7;
  u_xlat22 = (x_671 * x_672);
  let x_674 : f32 = u_xlat22;
  let x_675 : f32 = u_xlat22;
  u_xlat22 = (x_674 * x_675);
  let x_677 : f32 = u_xlat7;
  let x_678 : f32 = u_xlat22;
  u_xlat7 = (x_677 * x_678);
  let x_680 : vec3<f32> = u_xlat1;
  let x_683 : vec3<f32> = (-(x_680) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_684 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat4;
  let x_688 : f32 = u_xlat7;
  let x_691 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_686.x, x_686.y, x_686.z) * vec3<f32>(x_688, x_688, x_688)) + x_691);
  let x_693 : vec3<f32> = u_xlat1;
  let x_694 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_693 * x_694);
  let x_698 : vec4<f32> = u_xlat0;
  let x_700 : vec4<f32> = u_xlat2;
  let x_703 : vec3<f32> = u_xlat1;
  let x_704 : vec3<f32> = ((vec3<f32>(x_698.x, x_698.z, x_698.w) * vec3<f32>(x_700.x, x_700.z, x_700.w)) + x_703);
  let x_705 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
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

