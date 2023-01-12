struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_3 : u32,
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

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

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
  var u_xlat24 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var x_308 : vec3<f32>;
  var u_xlat18 : vec2<f32>;
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
  let x_131 : f32 = u_xlat21;
  u_xlat24 = (-(x_131) + 1.0f);
  let x_139 : f32 = u_xlat1.w;
  let x_140 : f32 = u_xlat21;
  let x_142 : f32 = u_xlat24;
  SV_Target0.w = ((x_139 * x_140) + x_142);
  let x_149 : vec3<f32> = vs_TEXCOORD5;
  let x_154 : vec4<f32> = x_32.unity_WorldToLight[1i];
  let x_156 : vec2<f32> = (vec2<f32>(x_149.y, x_149.y) * vec2<f32>(x_154.x, x_154.y));
  let x_157 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_156.x, x_156.y, x_157.z);
  let x_161 : vec4<f32> = x_32.unity_WorldToLight[0i];
  let x_163 : vec3<f32> = vs_TEXCOORD5;
  let x_166 : vec3<f32> = u_xlat4;
  let x_168 : vec2<f32> = ((vec2<f32>(x_161.x, x_161.y) * vec2<f32>(x_163.x, x_163.x)) + vec2<f32>(x_166.x, x_166.y));
  let x_169 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_168.x, x_168.y, x_169.z);
  let x_173 : vec4<f32> = x_32.unity_WorldToLight[2i];
  let x_175 : vec3<f32> = vs_TEXCOORD5;
  let x_178 : vec3<f32> = u_xlat4;
  let x_180 : vec2<f32> = ((vec2<f32>(x_173.x, x_173.y) * vec2<f32>(x_175.z, x_175.z)) + vec2<f32>(x_178.x, x_178.y));
  let x_181 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_180.x, x_180.y, x_181.z);
  let x_183 : vec3<f32> = u_xlat4;
  let x_187 : vec4<f32> = x_32.unity_WorldToLight[3i];
  let x_189 : vec2<f32> = (vec2<f32>(x_183.x, x_183.y) + vec2<f32>(x_187.x, x_187.y));
  let x_190 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_189.x, x_189.y, x_190.z);
  let x_193 : vec3<f32> = vs_TEXCOORD5;
  let x_197 : vec3<f32> = x_32.x_WorldSpaceCameraPos;
  let x_198 : vec3<f32> = (-(x_193) + x_197);
  let x_199 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_205 : f32 = x_32.unity_MatrixV[0i].z;
  u_xlat6.x = x_205;
  let x_208 : f32 = x_32.unity_MatrixV[1i].z;
  u_xlat6.y = x_208;
  let x_212 : f32 = x_32.unity_MatrixV[2i].z;
  u_xlat6.z = x_212;
  let x_214 : vec4<f32> = u_xlat5;
  let x_216 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_214.x, x_214.y, x_214.z), x_216);
  let x_218 : vec3<f32> = vs_TEXCOORD5;
  let x_221 : vec4<f32> = x_32.unity_ShadowFadeCenterAndType;
  let x_224 : vec3<f32> = (x_218 + -(vec3<f32>(x_221.x, x_221.y, x_221.z)));
  let x_225 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_228 : vec4<f32> = u_xlat5;
  let x_230 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_228.x, x_228.y, x_228.z), vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_233);
  let x_235 : f32 = u_xlat21;
  let x_237 : f32 = u_xlat22;
  u_xlat22 = (-(x_235) + x_237);
  let x_240 : f32 = x_32.unity_ShadowFadeCenterAndType.w;
  let x_241 : f32 = u_xlat22;
  let x_243 : f32 = u_xlat21;
  u_xlat21 = ((x_240 * x_241) + x_243);
  let x_245 : f32 = u_xlat21;
  let x_247 : f32 = x_32.x_LightShadowData.z;
  let x_250 : f32 = x_32.x_LightShadowData.w;
  u_xlat21 = ((x_245 * x_247) + x_250);
  let x_252 : f32 = u_xlat21;
  u_xlat21 = clamp(x_252, 0.0f, 1.0f);
  let x_260 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_260 == 1.0f);
  let x_262 : bool = u_xlatb22;
  if (x_262) {
    let x_266 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_266 == 1.0f);
    let x_268 : vec3<f32> = vs_TEXCOORD5;
    let x_272 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_274 : vec3<f32> = (vec3<f32>(x_268.y, x_268.y, x_268.y) * vec3<f32>(x_272.x, x_272.y, x_272.z));
    let x_275 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_278 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_280 : vec3<f32> = vs_TEXCOORD5;
    let x_283 : vec4<f32> = u_xlat5;
    let x_285 : vec3<f32> = ((vec3<f32>(x_278.x, x_278.y, x_278.z) * vec3<f32>(x_280.x, x_280.x, x_280.x)) + vec3<f32>(x_283.x, x_283.y, x_283.z));
    let x_286 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_289 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_291 : vec3<f32> = vs_TEXCOORD5;
    let x_294 : vec4<f32> = u_xlat5;
    let x_296 : vec3<f32> = ((vec3<f32>(x_289.x, x_289.y, x_289.z) * vec3<f32>(x_291.z, x_291.z, x_291.z)) + vec3<f32>(x_294.x, x_294.y, x_294.z));
    let x_297 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
    let x_299 : vec4<f32> = u_xlat5;
    let x_302 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_304 : vec3<f32> = (vec3<f32>(x_299.x, x_299.y, x_299.z) + vec3<f32>(x_302.x, x_302.y, x_302.z));
    let x_305 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
    let x_307 : bool = u_xlatb22;
    if (x_307) {
      let x_311 : vec4<f32> = u_xlat5;
      x_308 = vec3<f32>(x_311.x, x_311.y, x_311.z);
    } else {
      let x_314 : vec3<f32> = vs_TEXCOORD5;
      x_308 = x_314;
    }
    let x_315 : vec3<f32> = x_308;
    let x_316 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
    let x_318 : vec4<f32> = u_xlat5;
    let x_322 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_324 : vec3<f32> = (vec3<f32>(x_318.x, x_318.y, x_318.z) + -(x_322));
    let x_325 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
    let x_327 : vec4<f32> = u_xlat5;
    let x_331 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_332 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) * x_331);
    let x_333 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_333.x, x_332.x, x_332.y, x_332.z);
    let x_336 : f32 = u_xlat5.y;
    u_xlat22 = ((x_336 * 0.25f) + 0.75f);
    let x_342 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_342 * 0.5f) + 0.75f);
    let x_346 : f32 = u_xlat22;
    let x_347 : f32 = u_xlat24;
    u_xlat5.x = max(x_346, x_347);
    let x_358 : vec4<f32> = u_xlat5;
    let x_360 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_358.x, x_358.z, x_358.w));
    u_xlat5 = x_360;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_366 : vec4<f32> = u_xlat5;
  let x_368 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_366, x_368);
  let x_370 : f32 = u_xlat22;
  u_xlat22 = clamp(x_370, 0.0f, 1.0f);
  let x_375 : vec4<f32> = vs_TEXCOORD7;
  let x_377 : vec4<f32> = vs_TEXCOORD7;
  u_xlat18 = (vec2<f32>(x_375.x, x_375.y) / vec2<f32>(x_377.w, x_377.w));
  let x_385 : vec2<f32> = u_xlat18;
  let x_386 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_385);
  u_xlat24 = x_386.x;
  let x_388 : f32 = u_xlat22;
  let x_389 : f32 = u_xlat24;
  u_xlat22 = (x_388 + -(x_389));
  let x_392 : f32 = u_xlat21;
  let x_393 : f32 = u_xlat22;
  let x_395 : f32 = u_xlat24;
  u_xlat21 = ((x_392 * x_393) + x_395);
  let x_402 : vec3<f32> = u_xlat4;
  let x_404 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_402.x, x_402.y));
  u_xlat22 = x_404.w;
  let x_406 : f32 = u_xlat21;
  let x_407 : f32 = u_xlat22;
  u_xlat21 = (x_406 * x_407);
  let x_409 : f32 = u_xlat21;
  let x_413 : vec4<f32> = x_32.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_409, x_409, x_409) * vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_418 : f32 = x_32.x_Glossiness;
  u_xlat21 = (-(x_418) + 1.0f);
  let x_424 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_424;
  let x_428 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_428;
  let x_431 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_431;
  let x_433 : vec4<f32> = vs_TEXCOORD1;
  let x_436 : f32 = u_xlat23;
  let x_439 : vec4<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_433.x, x_433.y, x_433.z)) * vec3<f32>(x_436, x_436, x_436)) + vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec3<f32> = u_xlat6;
  let x_443 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_442, x_443);
  let x_445 : f32 = u_xlat22;
  u_xlat22 = max(x_445, 0.001f);
  let x_448 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_448);
  let x_450 : f32 = u_xlat22;
  let x_452 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_450, x_450, x_450) * x_452);
  let x_454 : vec4<f32> = u_xlat2;
  let x_456 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_454.x, x_454.y, x_454.z), -(x_456));
  let x_459 : vec4<f32> = u_xlat2;
  let x_461 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat23;
  u_xlat23 = clamp(x_464, 0.0f, 1.0f);
  let x_466 : vec4<f32> = u_xlat2;
  let x_468 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_466.x, x_466.y, x_466.z), x_468);
  let x_472 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_472, 0.0f, 1.0f);
  let x_476 : vec4<f32> = u_xlat5;
  let x_478 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(vec3<f32>(x_476.x, x_476.y, x_476.z), x_478);
  let x_480 : f32 = u_xlat9;
  u_xlat9 = clamp(x_480, 0.0f, 1.0f);
  let x_483 : f32 = u_xlat9;
  let x_484 : f32 = u_xlat9;
  u_xlat16 = (x_483 * x_484);
  let x_486 : f32 = u_xlat16;
  let x_488 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_486, x_486), vec2<f32>(x_488, x_488));
  let x_491 : f32 = u_xlat16;
  u_xlat16 = (x_491 + -0.5f);
  let x_494 : f32 = u_xlat23;
  u_xlat3.x = (-(x_494) + 1.0f);
  let x_500 : f32 = u_xlat3.x;
  let x_502 : f32 = u_xlat3.x;
  u_xlat10 = (x_500 * x_502);
  let x_504 : f32 = u_xlat10;
  let x_505 : f32 = u_xlat10;
  u_xlat10 = (x_504 * x_505);
  let x_508 : f32 = u_xlat3.x;
  let x_509 : f32 = u_xlat10;
  u_xlat3.x = (x_508 * x_509);
  let x_512 : f32 = u_xlat16;
  let x_514 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_512 * x_514) + 1.0f);
  let x_518 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_518)) + 1.0f);
  let x_523 : f32 = u_xlat10;
  let x_524 : f32 = u_xlat10;
  u_xlat17 = (x_523 * x_524);
  let x_526 : f32 = u_xlat17;
  let x_527 : f32 = u_xlat17;
  u_xlat17 = (x_526 * x_527);
  let x_529 : f32 = u_xlat10;
  let x_530 : f32 = u_xlat17;
  u_xlat10 = (x_529 * x_530);
  let x_532 : f32 = u_xlat16;
  let x_533 : f32 = u_xlat10;
  u_xlat16 = ((x_532 * x_533) + 1.0f);
  let x_536 : f32 = u_xlat16;
  let x_538 : f32 = u_xlat3.x;
  u_xlat16 = (x_536 * x_538);
  let x_540 : f32 = u_xlat23;
  let x_541 : f32 = u_xlat16;
  u_xlat16 = (x_540 * x_541);
  let x_543 : f32 = u_xlat21;
  let x_544 : f32 = u_xlat21;
  u_xlat21 = (x_543 * x_544);
  let x_546 : f32 = u_xlat21;
  u_xlat21 = max(x_546, 0.002f);
  let x_549 : f32 = u_xlat21;
  u_xlat3.x = (-(x_549) + 1.0f);
  let x_553 : f32 = u_xlat22;
  let x_556 : f32 = u_xlat3.x;
  let x_558 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_553) * x_556) + x_558);
  let x_560 : f32 = u_xlat23;
  let x_562 : f32 = u_xlat3.x;
  let x_564 : f32 = u_xlat21;
  u_xlat3.x = ((x_560 * x_562) + x_564);
  let x_567 : f32 = u_xlat22;
  let x_570 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_567) * x_570);
  let x_572 : f32 = u_xlat23;
  let x_573 : f32 = u_xlat10;
  let x_575 : f32 = u_xlat22;
  u_xlat22 = ((x_572 * x_573) + x_575);
  let x_577 : f32 = u_xlat22;
  u_xlat22 = (x_577 + 0.00001f);
  let x_580 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_580);
  let x_582 : f32 = u_xlat21;
  let x_583 : f32 = u_xlat21;
  u_xlat21 = (x_582 * x_583);
  let x_586 : f32 = u_xlat2.x;
  let x_587 : f32 = u_xlat21;
  let x_590 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_586 * x_587) + -(x_590));
  let x_595 : f32 = u_xlat3.x;
  let x_597 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_595 * x_597) + 1.0f);
  let x_601 : f32 = u_xlat21;
  u_xlat21 = (x_601 * 0.318309873f);
  let x_605 : f32 = u_xlat2.x;
  let x_607 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_605 * x_607) + 0.0000001f);
  let x_612 : f32 = u_xlat21;
  let x_614 : f32 = u_xlat2.x;
  u_xlat21 = (x_612 / x_614);
  let x_616 : f32 = u_xlat21;
  let x_617 : f32 = u_xlat22;
  u_xlat21 = (x_616 * x_617);
  let x_619 : f32 = u_xlat23;
  let x_620 : f32 = u_xlat21;
  u_xlat21 = (x_619 * x_620);
  let x_622 : f32 = u_xlat21;
  u_xlat21 = (x_622 * 3.141592741f);
  let x_625 : f32 = u_xlat21;
  u_xlat21 = max(x_625, 0.0f);
  let x_627 : vec4<f32> = u_xlat0;
  let x_629 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : f32 = u_xlat22;
  u_xlatb22 = !((x_632 == 0.0f));
  let x_634 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_634);
  let x_636 : f32 = u_xlat21;
  let x_637 : f32 = u_xlat22;
  u_xlat21 = (x_636 * x_637);
  let x_639 : f32 = u_xlat16;
  let x_641 : vec3<f32> = u_xlat4;
  let x_642 : vec3<f32> = (vec3<f32>(x_639, x_639, x_639) * x_641);
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_642.x, x_643.y, x_642.y, x_642.z);
  let x_645 : vec3<f32> = u_xlat4;
  let x_646 : f32 = u_xlat21;
  u_xlat3 = (x_645 * vec3<f32>(x_646, x_646, x_646));
  let x_649 : f32 = u_xlat9;
  u_xlat21 = (-(x_649) + 1.0f);
  let x_652 : f32 = u_xlat21;
  let x_653 : f32 = u_xlat21;
  u_xlat22 = (x_652 * x_653);
  let x_655 : f32 = u_xlat22;
  let x_656 : f32 = u_xlat22;
  u_xlat22 = (x_655 * x_656);
  let x_658 : f32 = u_xlat21;
  let x_659 : f32 = u_xlat22;
  u_xlat21 = (x_658 * x_659);
  let x_661 : vec4<f32> = u_xlat0;
  u_xlat4 = (-(vec3<f32>(x_661.x, x_661.y, x_661.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_666 : vec3<f32> = u_xlat4;
  let x_667 : f32 = u_xlat21;
  let x_670 : vec4<f32> = u_xlat0;
  let x_672 : vec3<f32> = ((x_666 * vec3<f32>(x_667, x_667, x_667)) + vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat0;
  let x_677 : vec3<f32> = u_xlat3;
  let x_678 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) * x_677);
  let x_679 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat1;
  let x_683 : vec4<f32> = u_xlat2;
  let x_686 : vec4<f32> = u_xlat0;
  let x_688 : vec3<f32> = ((vec3<f32>(x_681.x, x_681.y, x_681.z) * vec3<f32>(x_683.x, x_683.z, x_683.w)) + vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_689 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_692 : f32 = vs_TEXCOORD1.w;
  let x_694 : f32 = x_32.x_ProjectionParams.y;
  u_xlat21 = (x_692 / x_694);
  let x_696 : f32 = u_xlat21;
  u_xlat21 = (-(x_696) + 1.0f);
  let x_699 : f32 = u_xlat21;
  let x_701 : f32 = x_32.x_ProjectionParams.z;
  u_xlat21 = (x_699 * x_701);
  let x_703 : f32 = u_xlat21;
  u_xlat21 = max(x_703, 0.0f);
  let x_705 : f32 = u_xlat21;
  let x_708 : f32 = x_32.unity_FogParams.x;
  u_xlat21 = (x_705 * x_708);
  let x_710 : f32 = u_xlat21;
  let x_711 : f32 = u_xlat21;
  u_xlat21 = (x_710 * -(x_711));
  let x_714 : f32 = u_xlat21;
  u_xlat21 = exp2(x_714);
  let x_716 : vec4<f32> = u_xlat0;
  let x_718 : f32 = u_xlat21;
  let x_720 : vec3<f32> = (vec3<f32>(x_716.x, x_716.y, x_716.z) * vec3<f32>(x_718, x_718, x_718));
  let x_721 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

