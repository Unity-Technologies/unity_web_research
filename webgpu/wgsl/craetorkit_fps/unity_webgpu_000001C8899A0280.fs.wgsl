struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
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
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  x_OcclusionStrength : f32,
  @size(4)
  padding_3 : u32,
  x_EmissionColor : vec4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(8) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(10) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(3) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(6) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(7) var unity_SpecCube1 : texture_cube<f32>;

@group(0) @binding(5) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat46 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlatb46 : bool;
  var u_xlatb47 : bool;
  var x_330 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlatb45 : bool;
  var u_xlat8 : vec4<f32>;
  var x_524 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_710 : f32;
  var x_722 : f32;
  var x_734 : f32;
  var u_xlatb48 : bool;
  var u_xlat48 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_891 : f32;
  var x_903 : f32;
  var x_915 : f32;
  var u_xlat18 : f32;
  var u_xlat33 : f32;
  var u_xlat19 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_24.x, x_24.y));
  let x_27 : vec2<f32> = vec2<f32>(x_26.x, x_26.w);
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_27.x, x_27.y, x_28.z);
  let x_36 : vec4<f32> = vs_TEXCOORD0;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_36.x, x_36.y));
  u_xlat1 = vec3<f32>(x_38.x, x_38.y, x_38.z);
  let x_41 : vec3<f32> = u_xlat1;
  let x_50 : vec4<f32> = x_45.x_Color;
  u_xlat2 = (x_41 * vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_54 : vec4<f32> = x_45.x_Color;
  let x_56 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_54.x, x_54.y, x_54.z) * x_56) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_61.x, x_61.x, x_61.x) * x_63) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_72 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_72) * 0.959999979f) + 0.959999979f);
  let x_78 : vec3<f32> = u_xlat0;
  let x_80 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_78.x, x_78.x, x_78.x) * x_80);
  let x_89 : vec4<f32> = vs_TEXCOORD0;
  let x_91 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_89.x, x_89.y));
  let x_92 : vec3<f32> = vec3<f32>(x_91.x, x_91.y, x_91.w);
  let x_93 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_97 : f32 = u_xlat3.z;
  let x_99 : f32 = u_xlat3.x;
  u_xlat3.x = (x_97 * x_99);
  let x_104 : vec4<f32> = u_xlat3;
  u_xlat30 = ((vec2<f32>(x_104.x, x_104.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_112 : vec2<f32> = u_xlat30;
  let x_116 : f32 = x_45.x_BumpScale;
  u_xlat30 = (x_112 * vec2<f32>(x_116, x_116));
  let x_120 : vec2<f32> = u_xlat30;
  let x_121 : vec2<f32> = u_xlat30;
  u_xlat46 = dot(x_120, x_121);
  let x_123 : f32 = u_xlat46;
  u_xlat46 = min(x_123, 1.0f);
  let x_126 : f32 = u_xlat46;
  u_xlat46 = (-(x_126) + 1.0f);
  let x_129 : f32 = u_xlat46;
  u_xlat46 = sqrt(x_129);
  let x_131 : vec2<f32> = u_xlat30;
  let x_134 : vec4<f32> = vs_TEXCOORD3;
  let x_136 : vec3<f32> = (vec3<f32>(x_131.y, x_131.y, x_131.y) * vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_140 : vec4<f32> = vs_TEXCOORD2;
  let x_142 : vec2<f32> = u_xlat30;
  let x_145 : vec4<f32> = u_xlat3;
  let x_147 : vec3<f32> = ((vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_142.x, x_142.x, x_142.x)) + vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = vs_TEXCOORD4;
  let x_153 : f32 = u_xlat46;
  let x_156 : vec4<f32> = u_xlat3;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153, x_153, x_153)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat3;
  let x_163 : vec4<f32> = u_xlat3;
  u_xlat30.x = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_168 : f32 = u_xlat30.x;
  u_xlat30.x = inverseSqrt(x_168);
  let x_171 : vec2<f32> = u_xlat30;
  let x_173 : vec4<f32> = u_xlat3;
  let x_175 : vec3<f32> = (vec3<f32>(x_171.x, x_171.x, x_171.x) * vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_179 : vec4<f32> = vs_TEXCOORD1;
  let x_181 : vec4<f32> = vs_TEXCOORD1;
  u_xlat30.x = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_186 : f32 = u_xlat30.x;
  u_xlat30.x = inverseSqrt(x_186);
  let x_190 : vec2<f32> = u_xlat30;
  let x_192 : vec4<f32> = vs_TEXCOORD1;
  u_xlat4 = (vec3<f32>(x_190.x, x_190.x, x_190.x) * vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_199 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_199;
  let x_202 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_202;
  let x_206 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_206;
  let x_209 : vec4<f32> = u_xlat5;
  let x_215 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_216 : vec3<f32> = (-(vec3<f32>(x_209.x, x_209.y, x_209.z)) + x_215);
  let x_217 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_222 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat7.x = x_222;
  let x_226 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat7.y = x_226;
  let x_230 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat7.z = x_230;
  let x_233 : vec4<f32> = u_xlat6;
  let x_235 : vec3<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_233.x, x_233.y, x_233.z), x_235);
  let x_237 : vec4<f32> = u_xlat5;
  let x_241 : vec4<f32> = x_45.unity_ShadowFadeCenterAndType;
  let x_244 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) + -(vec3<f32>(x_241.x, x_241.y, x_241.z)));
  let x_245 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec4<f32> = u_xlat6;
  let x_249 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_247.x, x_247.y, x_247.z), vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : f32 = u_xlat46;
  u_xlat46 = sqrt(x_252);
  let x_254 : f32 = u_xlat45;
  let x_256 : f32 = u_xlat46;
  u_xlat46 = (-(x_254) + x_256);
  let x_259 : f32 = x_45.unity_ShadowFadeCenterAndType.w;
  let x_260 : f32 = u_xlat46;
  let x_262 : f32 = u_xlat45;
  u_xlat45 = ((x_259 * x_260) + x_262);
  let x_264 : f32 = u_xlat45;
  let x_267 : f32 = x_45.x_LightShadowData.z;
  let x_270 : f32 = x_45.x_LightShadowData.w;
  u_xlat45 = ((x_264 * x_267) + x_270);
  let x_272 : f32 = u_xlat45;
  u_xlat45 = clamp(x_272, 0.0f, 1.0f);
  let x_280 : f32 = x_45.unity_ProbeVolumeParams.x;
  u_xlatb46 = (x_280 == 1.0f);
  let x_282 : bool = u_xlatb46;
  if (x_282) {
    let x_287 : f32 = x_45.unity_ProbeVolumeParams.y;
    u_xlatb47 = (x_287 == 1.0f);
    let x_289 : vec4<f32> = vs_TEXCOORD3;
    let x_293 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[1i];
    let x_295 : vec3<f32> = (vec3<f32>(x_289.w, x_289.w, x_289.w) * vec3<f32>(x_293.x, x_293.y, x_293.z));
    let x_296 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
    let x_299 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[0i];
    let x_301 : vec4<f32> = vs_TEXCOORD2;
    let x_304 : vec4<f32> = u_xlat6;
    let x_306 : vec3<f32> = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.w, x_301.w, x_301.w)) + vec3<f32>(x_304.x, x_304.y, x_304.z));
    let x_307 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
    let x_310 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[2i];
    let x_312 : vec4<f32> = vs_TEXCOORD4;
    let x_315 : vec4<f32> = u_xlat6;
    let x_317 : vec3<f32> = ((vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(x_312.w, x_312.w, x_312.w)) + vec3<f32>(x_315.x, x_315.y, x_315.z));
    let x_318 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
    let x_320 : vec4<f32> = u_xlat6;
    let x_324 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[3i];
    let x_326 : vec3<f32> = (vec3<f32>(x_320.x, x_320.y, x_320.z) + vec3<f32>(x_324.x, x_324.y, x_324.z));
    let x_327 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
    let x_329 : bool = u_xlatb47;
    if (x_329) {
      let x_333 : vec4<f32> = u_xlat6;
      x_330 = vec3<f32>(x_333.x, x_333.y, x_333.z);
    } else {
      let x_336 : vec4<f32> = u_xlat5;
      x_330 = vec3<f32>(x_336.x, x_336.y, x_336.z);
    }
    let x_338 : vec3<f32> = x_330;
    let x_339 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
    let x_341 : vec4<f32> = u_xlat6;
    let x_345 : vec3<f32> = x_45.unity_ProbeVolumeMin;
    let x_347 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) + -(x_345));
    let x_348 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
    let x_350 : vec4<f32> = u_xlat6;
    let x_354 : vec3<f32> = x_45.unity_ProbeVolumeSizeInv;
    let x_355 : vec3<f32> = (vec3<f32>(x_350.x, x_350.y, x_350.z) * x_354);
    let x_356 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_356.x, x_355.x, x_355.y, x_355.z);
    let x_360 : f32 = u_xlat6.y;
    u_xlat47 = ((x_360 * 0.25f) + 0.75f);
    let x_367 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat49 = ((x_367 * 0.5f) + 0.75f);
    let x_371 : f32 = u_xlat47;
    let x_372 : f32 = u_xlat49;
    u_xlat6.x = max(x_371, x_372);
    let x_383 : vec4<f32> = u_xlat6;
    let x_385 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_383.x, x_383.z, x_383.w));
    u_xlat6 = x_385;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_391 : vec4<f32> = u_xlat6;
  let x_394 : vec4<f32> = x_45.unity_OcclusionMaskSelector;
  u_xlat47 = dot(x_391, x_394);
  let x_396 : f32 = u_xlat47;
  u_xlat47 = clamp(x_396, 0.0f, 1.0f);
  let x_399 : vec4<f32> = vs_TEXCOORD7;
  let x_401 : vec4<f32> = vs_TEXCOORD7;
  let x_403 : vec2<f32> = (vec2<f32>(x_399.x, x_399.y) / vec2<f32>(x_401.w, x_401.w));
  let x_404 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
  let x_411 : vec4<f32> = u_xlat6;
  let x_413 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_411.x, x_411.y));
  u_xlat49 = x_413.x;
  let x_415 : f32 = u_xlat47;
  let x_416 : f32 = u_xlat49;
  u_xlat47 = (x_415 + -(x_416));
  let x_419 : f32 = u_xlat45;
  let x_420 : f32 = u_xlat47;
  let x_422 : f32 = u_xlat49;
  u_xlat45 = ((x_419 * x_420) + x_422);
  let x_429 : vec4<f32> = vs_TEXCOORD0;
  let x_431 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_429.x, x_429.y));
  u_xlat47 = x_431.y;
  let x_435 : f32 = x_45.x_OcclusionStrength;
  u_xlat49 = (-(x_435) + 1.0f);
  let x_438 : f32 = u_xlat47;
  let x_440 : f32 = x_45.x_OcclusionStrength;
  let x_442 : f32 = u_xlat49;
  u_xlat47 = ((x_438 * x_440) + x_442);
  let x_445 : f32 = u_xlat0.y;
  let x_449 : f32 = x_45.x_GlossMapScale;
  u_xlat49 = ((-(x_445) * x_449) + 1.0f);
  let x_453 : vec3<f32> = u_xlat4;
  let x_454 : vec4<f32> = u_xlat3;
  u_xlat50 = dot(x_453, vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : f32 = u_xlat50;
  let x_458 : f32 = u_xlat50;
  u_xlat50 = (x_457 + x_458);
  let x_460 : vec4<f32> = u_xlat3;
  let x_462 : f32 = u_xlat50;
  let x_466 : vec3<f32> = u_xlat4;
  let x_467 : vec3<f32> = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * -(vec3<f32>(x_462, x_462, x_462))) + x_466);
  let x_468 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : f32 = u_xlat45;
  let x_474 : vec4<f32> = x_45.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_470, x_470, x_470) * vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : bool = u_xlatb46;
  if (x_477) {
    let x_482 : f32 = x_45.unity_ProbeVolumeParams.y;
    u_xlatb45 = (x_482 == 1.0f);
    let x_485 : vec4<f32> = vs_TEXCOORD3;
    let x_488 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[1i];
    let x_490 : vec3<f32> = (vec3<f32>(x_485.w, x_485.w, x_485.w) * vec3<f32>(x_488.x, x_488.y, x_488.z));
    let x_491 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
    let x_494 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[0i];
    let x_496 : vec4<f32> = vs_TEXCOORD2;
    let x_499 : vec4<f32> = u_xlat8;
    let x_501 : vec3<f32> = ((vec3<f32>(x_494.x, x_494.y, x_494.z) * vec3<f32>(x_496.w, x_496.w, x_496.w)) + vec3<f32>(x_499.x, x_499.y, x_499.z));
    let x_502 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
    let x_505 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[2i];
    let x_507 : vec4<f32> = vs_TEXCOORD4;
    let x_510 : vec4<f32> = u_xlat8;
    let x_512 : vec3<f32> = ((vec3<f32>(x_505.x, x_505.y, x_505.z) * vec3<f32>(x_507.w, x_507.w, x_507.w)) + vec3<f32>(x_510.x, x_510.y, x_510.z));
    let x_513 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
    let x_515 : vec4<f32> = u_xlat8;
    let x_518 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[3i];
    let x_520 : vec3<f32> = (vec3<f32>(x_515.x, x_515.y, x_515.z) + vec3<f32>(x_518.x, x_518.y, x_518.z));
    let x_521 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
    let x_523 : bool = u_xlatb45;
    if (x_523) {
      let x_527 : vec4<f32> = u_xlat8;
      x_524 = vec3<f32>(x_527.x, x_527.y, x_527.z);
    } else {
      let x_530 : vec4<f32> = u_xlat5;
      x_524 = vec3<f32>(x_530.x, x_530.y, x_530.z);
    }
    let x_532 : vec3<f32> = x_524;
    let x_533 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
    let x_535 : vec4<f32> = u_xlat8;
    let x_538 : vec3<f32> = x_45.unity_ProbeVolumeMin;
    let x_540 : vec3<f32> = (vec3<f32>(x_535.x, x_535.y, x_535.z) + -(x_538));
    let x_541 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
    let x_543 : vec4<f32> = u_xlat8;
    let x_546 : vec3<f32> = x_45.unity_ProbeVolumeSizeInv;
    let x_547 : vec3<f32> = (vec3<f32>(x_543.x, x_543.y, x_543.z) * x_546);
    let x_548 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_548.x, x_547.x, x_547.y, x_547.z);
    let x_551 : f32 = u_xlat8.y;
    u_xlat45 = (x_551 * 0.25f);
    let x_554 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat46 = (x_554 * 0.5f);
    let x_557 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat50 = ((-(x_557) * 0.5f) + 0.25f);
    let x_561 : f32 = u_xlat45;
    let x_562 : f32 = u_xlat46;
    u_xlat45 = max(x_561, x_562);
    let x_564 : f32 = u_xlat50;
    let x_565 : f32 = u_xlat45;
    u_xlat8.x = min(x_564, x_565);
    let x_572 : vec4<f32> = u_xlat8;
    let x_574 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_572.x, x_572.z, x_572.w));
    u_xlat9 = x_574;
    let x_576 : vec4<f32> = u_xlat8;
    let x_579 : vec3<f32> = (vec3<f32>(x_576.x, x_576.z, x_576.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_580 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
    let x_585 : vec4<f32> = u_xlat10;
    let x_587 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_585.x, x_585.y, x_585.z));
    u_xlat10 = x_587;
    let x_588 : vec4<f32> = u_xlat8;
    let x_591 : vec3<f32> = (vec3<f32>(x_588.x, x_588.z, x_588.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_592 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
    let x_597 : vec4<f32> = u_xlat8;
    let x_599 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_597.x, x_597.y, x_597.z));
    u_xlat8 = x_599;
    u_xlat3.w = 1.0f;
    let x_601 : vec4<f32> = u_xlat9;
    let x_602 : vec4<f32> = u_xlat3;
    u_xlat9.x = dot(x_601, x_602);
    let x_605 : vec4<f32> = u_xlat10;
    let x_606 : vec4<f32> = u_xlat3;
    u_xlat9.y = dot(x_605, x_606);
    let x_609 : vec4<f32> = u_xlat8;
    let x_610 : vec4<f32> = u_xlat3;
    u_xlat9.z = dot(x_609, x_610);
  } else {
    u_xlat3.w = 1.0f;
    let x_616 : vec4<f32> = x_45.unity_SHAr;
    let x_617 : vec4<f32> = u_xlat3;
    u_xlat9.x = dot(x_616, x_617);
    let x_622 : vec4<f32> = x_45.unity_SHAg;
    let x_623 : vec4<f32> = u_xlat3;
    u_xlat9.y = dot(x_622, x_623);
    let x_628 : vec4<f32> = x_45.unity_SHAb;
    let x_629 : vec4<f32> = u_xlat3;
    u_xlat9.z = dot(x_628, x_629);
  }
  let x_632 : vec4<f32> = u_xlat9;
  let x_635 : vec4<f32> = vs_TEXCOORD5;
  let x_637 : vec3<f32> = (vec3<f32>(x_632.x, x_632.y, x_632.z) + vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_640 : vec4<f32> = u_xlat8;
  let x_643 : vec3<f32> = max(vec3<f32>(x_640.x, x_640.y, x_640.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_644 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_648 : f32 = x_45.unity_SpecCube0_ProbePosition.w;
  u_xlatb45 = (0.0f < x_648);
  let x_650 : bool = u_xlatb45;
  if (x_650) {
    let x_653 : vec4<f32> = u_xlat6;
    let x_655 : vec4<f32> = u_xlat6;
    u_xlat45 = dot(vec3<f32>(x_653.x, x_653.y, x_653.z), vec3<f32>(x_655.x, x_655.y, x_655.z));
    let x_658 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_658);
    let x_660 : f32 = u_xlat45;
    let x_662 : vec4<f32> = u_xlat6;
    let x_664 : vec3<f32> = (vec3<f32>(x_660, x_660, x_660) * vec3<f32>(x_662.x, x_662.y, x_662.z));
    let x_665 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
    let x_667 : vec4<f32> = u_xlat5;
    let x_672 : vec4<f32> = x_45.unity_SpecCube0_BoxMax;
    let x_674 : vec3<f32> = (-(vec3<f32>(x_667.x, x_667.y, x_667.z)) + vec3<f32>(x_672.x, x_672.y, x_672.z));
    let x_675 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
    let x_677 : vec4<f32> = u_xlat10;
    let x_679 : vec4<f32> = u_xlat9;
    let x_681 : vec3<f32> = (vec3<f32>(x_677.x, x_677.y, x_677.z) / vec3<f32>(x_679.x, x_679.y, x_679.z));
    let x_682 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
    let x_685 : vec4<f32> = u_xlat5;
    let x_690 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_685.x, x_685.y, x_685.z)) + vec3<f32>(x_690.x, x_690.y, x_690.z));
    let x_693 : vec3<f32> = u_xlat11;
    let x_694 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_693 / vec3<f32>(x_694.x, x_694.y, x_694.z));
    let x_701 : vec4<f32> = u_xlat9;
    let x_704 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_701.x, x_701.y, x_701.z, x_701.x));
    u_xlatb12 = vec3<bool>(x_704.x, x_704.y, x_704.z);
    let x_707 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_707;
    let x_709 : bool = u_xlatb12.x;
    if (x_709) {
      let x_714 : f32 = u_xlat10.x;
      x_710 = x_714;
    } else {
      let x_717 : f32 = u_xlat11.x;
      x_710 = x_717;
    }
    let x_718 : f32 = x_710;
    hlslcc_movcTemp.x = x_718;
    let x_721 : bool = u_xlatb12.y;
    if (x_721) {
      let x_726 : f32 = u_xlat10.y;
      x_722 = x_726;
    } else {
      let x_729 : f32 = u_xlat11.y;
      x_722 = x_729;
    }
    let x_730 : f32 = x_722;
    hlslcc_movcTemp.y = x_730;
    let x_733 : bool = u_xlatb12.z;
    if (x_733) {
      let x_738 : f32 = u_xlat10.z;
      x_734 = x_738;
    } else {
      let x_741 : f32 = u_xlat11.z;
      x_734 = x_741;
    }
    let x_742 : f32 = x_734;
    hlslcc_movcTemp.z = x_742;
    let x_744 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_744;
    let x_746 : f32 = u_xlat10.y;
    let x_748 : f32 = u_xlat10.x;
    u_xlat45 = min(x_746, x_748);
    let x_751 : f32 = u_xlat10.z;
    let x_752 : f32 = u_xlat45;
    u_xlat45 = min(x_751, x_752);
    let x_754 : vec4<f32> = u_xlat5;
    let x_757 : vec4<f32> = x_45.unity_SpecCube0_ProbePosition;
    let x_760 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) + -(vec3<f32>(x_757.x, x_757.y, x_757.z)));
    let x_761 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
    let x_763 : vec4<f32> = u_xlat9;
    let x_765 : f32 = u_xlat45;
    let x_768 : vec4<f32> = u_xlat10;
    let x_770 : vec3<f32> = ((vec3<f32>(x_763.x, x_763.y, x_763.z) * vec3<f32>(x_765, x_765, x_765)) + vec3<f32>(x_768.x, x_768.y, x_768.z));
    let x_771 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  } else {
    let x_774 : vec4<f32> = u_xlat6;
    let x_775 : vec3<f32> = vec3<f32>(x_774.x, x_774.y, x_774.z);
    let x_776 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  }
  let x_778 : f32 = u_xlat49;
  u_xlat45 = ((-(x_778) * 0.699999988f) + 1.700000048f);
  let x_784 : f32 = u_xlat45;
  let x_785 : f32 = u_xlat49;
  u_xlat45 = (x_784 * x_785);
  let x_787 : f32 = u_xlat45;
  u_xlat45 = (x_787 * 6.0f);
  let x_798 : vec4<f32> = u_xlat9;
  let x_800 : f32 = u_xlat45;
  let x_801 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_798.x, x_798.y, x_798.z), x_800);
  u_xlat9 = x_801;
  let x_803 : f32 = u_xlat9.w;
  u_xlat46 = (x_803 + -1.0f);
  let x_807 : f32 = x_45.unity_SpecCube0_HDR.w;
  let x_808 : f32 = u_xlat46;
  u_xlat46 = ((x_807 * x_808) + 1.0f);
  let x_811 : f32 = u_xlat46;
  u_xlat46 = log2(x_811);
  let x_813 : f32 = u_xlat46;
  let x_815 : f32 = x_45.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_813 * x_815);
  let x_817 : f32 = u_xlat46;
  u_xlat46 = exp2(x_817);
  let x_819 : f32 = u_xlat46;
  let x_821 : f32 = x_45.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_819 * x_821);
  let x_823 : vec4<f32> = u_xlat9;
  let x_825 : f32 = u_xlat46;
  let x_827 : vec3<f32> = (vec3<f32>(x_823.x, x_823.y, x_823.z) * vec3<f32>(x_825, x_825, x_825));
  let x_828 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_832 : f32 = x_45.unity_SpecCube0_BoxMin.w;
  u_xlatb48 = (x_832 < 0.999989986f);
  let x_835 : bool = u_xlatb48;
  if (x_835) {
    let x_840 : f32 = x_45.unity_SpecCube1_ProbePosition.w;
    u_xlatb48 = (0.0f < x_840);
    let x_842 : bool = u_xlatb48;
    if (x_842) {
      let x_846 : vec4<f32> = u_xlat6;
      let x_848 : vec4<f32> = u_xlat6;
      u_xlat48 = dot(vec3<f32>(x_846.x, x_846.y, x_846.z), vec3<f32>(x_848.x, x_848.y, x_848.z));
      let x_851 : f32 = u_xlat48;
      u_xlat48 = inverseSqrt(x_851);
      let x_853 : f32 = u_xlat48;
      let x_855 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_853, x_853, x_853) * vec3<f32>(x_855.x, x_855.y, x_855.z));
      let x_859 : vec4<f32> = u_xlat5;
      let x_864 : vec4<f32> = x_45.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(vec3<f32>(x_859.x, x_859.y, x_859.z)) + vec3<f32>(x_864.x, x_864.y, x_864.z));
      let x_867 : vec3<f32> = u_xlat12;
      let x_868 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_867 / x_868);
      let x_871 : vec4<f32> = u_xlat5;
      let x_876 : vec4<f32> = x_45.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(vec3<f32>(x_871.x, x_871.y, x_871.z)) + vec3<f32>(x_876.x, x_876.y, x_876.z));
      let x_879 : vec3<f32> = u_xlat13;
      let x_880 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_879 / x_880);
      let x_883 : vec3<f32> = u_xlat11;
      let x_885 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_883.x, x_883.y, x_883.z, x_883.x));
      u_xlatb14 = vec3<bool>(x_885.x, x_885.y, x_885.z);
      let x_888 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_888;
      let x_890 : bool = u_xlatb14.x;
      if (x_890) {
        let x_895 : f32 = u_xlat12.x;
        x_891 = x_895;
      } else {
        let x_898 : f32 = u_xlat13.x;
        x_891 = x_898;
      }
      let x_899 : f32 = x_891;
      hlslcc_movcTemp_1.x = x_899;
      let x_902 : bool = u_xlatb14.y;
      if (x_902) {
        let x_907 : f32 = u_xlat12.y;
        x_903 = x_907;
      } else {
        let x_910 : f32 = u_xlat13.y;
        x_903 = x_910;
      }
      let x_911 : f32 = x_903;
      hlslcc_movcTemp_1.y = x_911;
      let x_914 : bool = u_xlatb14.z;
      if (x_914) {
        let x_919 : f32 = u_xlat12.z;
        x_915 = x_919;
      } else {
        let x_922 : f32 = u_xlat13.z;
        x_915 = x_922;
      }
      let x_923 : f32 = x_915;
      hlslcc_movcTemp_1.z = x_923;
      let x_925 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_925;
      let x_927 : f32 = u_xlat12.y;
      let x_929 : f32 = u_xlat12.x;
      u_xlat48 = min(x_927, x_929);
      let x_932 : f32 = u_xlat12.z;
      let x_933 : f32 = u_xlat48;
      u_xlat48 = min(x_932, x_933);
      let x_935 : vec4<f32> = u_xlat5;
      let x_938 : vec4<f32> = x_45.unity_SpecCube1_ProbePosition;
      let x_941 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) + -(vec3<f32>(x_938.x, x_938.y, x_938.z)));
      let x_942 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
      let x_944 : vec3<f32> = u_xlat11;
      let x_945 : f32 = u_xlat48;
      let x_948 : vec4<f32> = u_xlat5;
      let x_950 : vec3<f32> = ((x_944 * vec3<f32>(x_945, x_945, x_945)) + vec3<f32>(x_948.x, x_948.y, x_948.z));
      let x_951 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
    }
    let x_957 : vec4<f32> = u_xlat6;
    let x_959 : f32 = u_xlat45;
    let x_960 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_957.x, x_957.y, x_957.z), x_959);
    u_xlat5 = x_960;
    let x_962 : f32 = u_xlat5.w;
    u_xlat45 = (x_962 + -1.0f);
    let x_966 : f32 = x_45.unity_SpecCube1_HDR.w;
    let x_967 : f32 = u_xlat45;
    u_xlat45 = ((x_966 * x_967) + 1.0f);
    let x_970 : f32 = u_xlat45;
    u_xlat45 = log2(x_970);
    let x_972 : f32 = u_xlat45;
    let x_974 : f32 = x_45.unity_SpecCube1_HDR.y;
    u_xlat45 = (x_972 * x_974);
    let x_976 : f32 = u_xlat45;
    u_xlat45 = exp2(x_976);
    let x_978 : f32 = u_xlat45;
    let x_980 : f32 = x_45.unity_SpecCube1_HDR.x;
    u_xlat45 = (x_978 * x_980);
    let x_982 : vec4<f32> = u_xlat5;
    let x_984 : f32 = u_xlat45;
    let x_986 : vec3<f32> = (vec3<f32>(x_982.x, x_982.y, x_982.z) * vec3<f32>(x_984, x_984, x_984));
    let x_987 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
    let x_989 : f32 = u_xlat46;
    let x_991 : vec4<f32> = u_xlat9;
    let x_994 : vec4<f32> = u_xlat5;
    let x_997 : vec3<f32> = ((vec3<f32>(x_989, x_989, x_989) * vec3<f32>(x_991.x, x_991.y, x_991.z)) + -(vec3<f32>(x_994.x, x_994.y, x_994.z)));
    let x_998 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
    let x_1001 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    let x_1003 : vec4<f32> = u_xlat6;
    let x_1006 : vec4<f32> = u_xlat5;
    let x_1008 : vec3<f32> = ((vec3<f32>(x_1001.w, x_1001.w, x_1001.w) * vec3<f32>(x_1003.x, x_1003.y, x_1003.z)) + vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
    let x_1009 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  }
  let x_1011 : f32 = u_xlat47;
  let x_1013 : vec4<f32> = u_xlat10;
  let x_1015 : vec3<f32> = (vec3<f32>(x_1011, x_1011, x_1011) * vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1016 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : vec4<f32> = vs_TEXCOORD1;
  let x_1021 : vec2<f32> = u_xlat30;
  let x_1025 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_1027 : vec3<f32> = ((-(vec3<f32>(x_1018.x, x_1018.y, x_1018.z)) * vec3<f32>(x_1021.x, x_1021.x, x_1021.x)) + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1030 : vec4<f32> = u_xlat6;
  let x_1032 : vec4<f32> = u_xlat6;
  u_xlat30.x = dot(vec3<f32>(x_1030.x, x_1030.y, x_1030.z), vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1037 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1037, 0.001f);
  let x_1042 : f32 = u_xlat30.x;
  u_xlat30.x = inverseSqrt(x_1042);
  let x_1045 : vec2<f32> = u_xlat30;
  let x_1047 : vec4<f32> = u_xlat6;
  let x_1049 : vec3<f32> = (vec3<f32>(x_1045.x, x_1045.x, x_1045.x) * vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  let x_1052 : vec4<f32> = u_xlat3;
  let x_1054 : vec3<f32> = u_xlat4;
  u_xlat30.x = dot(vec3<f32>(x_1052.x, x_1052.y, x_1052.z), -(x_1054));
  let x_1058 : vec4<f32> = u_xlat3;
  let x_1061 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  u_xlat45 = dot(vec3<f32>(x_1058.x, x_1058.y, x_1058.z), vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
  let x_1064 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1064, 0.0f, 1.0f);
  let x_1066 : vec4<f32> = u_xlat3;
  let x_1068 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_1066.x, x_1066.y, x_1066.z), vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
  let x_1071 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1071, 0.0f, 1.0f);
  let x_1074 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_1076 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_1074.x, x_1074.y, x_1074.z), vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
  let x_1081 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1081, 0.0f, 1.0f);
  let x_1086 : f32 = u_xlat3.x;
  let x_1088 : f32 = u_xlat3.x;
  u_xlat18 = (x_1086 * x_1088);
  let x_1090 : f32 = u_xlat18;
  let x_1092 : f32 = u_xlat49;
  u_xlat18 = dot(vec2<f32>(x_1090, x_1090), vec2<f32>(x_1092, x_1092));
  let x_1095 : f32 = u_xlat18;
  u_xlat18 = (x_1095 + -0.5f);
  let x_1099 : f32 = u_xlat45;
  u_xlat33 = (-(x_1099) + 1.0f);
  let x_1102 : f32 = u_xlat33;
  let x_1103 : f32 = u_xlat33;
  u_xlat48 = (x_1102 * x_1103);
  let x_1105 : f32 = u_xlat48;
  let x_1106 : f32 = u_xlat48;
  u_xlat48 = (x_1105 * x_1106);
  let x_1108 : f32 = u_xlat33;
  let x_1109 : f32 = u_xlat48;
  u_xlat33 = (x_1108 * x_1109);
  let x_1111 : f32 = u_xlat18;
  let x_1112 : f32 = u_xlat33;
  u_xlat33 = ((x_1111 * x_1112) + 1.0f);
  let x_1116 : f32 = u_xlat30.x;
  u_xlat48 = (-(abs(x_1116)) + 1.0f);
  let x_1120 : f32 = u_xlat48;
  let x_1121 : f32 = u_xlat48;
  u_xlat4.x = (x_1120 * x_1121);
  let x_1125 : f32 = u_xlat4.x;
  let x_1127 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1125 * x_1127);
  let x_1130 : f32 = u_xlat48;
  let x_1132 : f32 = u_xlat4.x;
  u_xlat48 = (x_1130 * x_1132);
  let x_1134 : f32 = u_xlat18;
  let x_1135 : f32 = u_xlat48;
  u_xlat18 = ((x_1134 * x_1135) + 1.0f);
  let x_1138 : f32 = u_xlat18;
  let x_1139 : f32 = u_xlat33;
  u_xlat18 = (x_1138 * x_1139);
  let x_1141 : f32 = u_xlat45;
  let x_1142 : f32 = u_xlat18;
  u_xlat18 = (x_1141 * x_1142);
  let x_1144 : f32 = u_xlat49;
  let x_1145 : f32 = u_xlat49;
  u_xlat33 = (x_1144 * x_1145);
  let x_1147 : f32 = u_xlat33;
  u_xlat33 = max(x_1147, 0.002f);
  let x_1150 : f32 = u_xlat33;
  u_xlat4.x = (-(x_1150) + 1.0f);
  let x_1156 : f32 = u_xlat30.x;
  let x_1159 : f32 = u_xlat4.x;
  let x_1161 : f32 = u_xlat33;
  u_xlat19 = ((abs(x_1156) * x_1159) + x_1161);
  let x_1163 : f32 = u_xlat45;
  let x_1165 : f32 = u_xlat4.x;
  let x_1167 : f32 = u_xlat33;
  u_xlat4.x = ((x_1163 * x_1165) + x_1167);
  let x_1171 : f32 = u_xlat30.x;
  let x_1174 : f32 = u_xlat4.x;
  u_xlat30.x = (abs(x_1171) * x_1174);
  let x_1177 : f32 = u_xlat45;
  let x_1178 : f32 = u_xlat19;
  let x_1181 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1177 * x_1178) + x_1181);
  let x_1185 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1185 + 0.00001f);
  let x_1190 : f32 = u_xlat30.x;
  u_xlat30.x = (0.5f / x_1190);
  let x_1193 : f32 = u_xlat33;
  let x_1194 : f32 = u_xlat33;
  u_xlat4.x = (x_1193 * x_1194);
  let x_1197 : f32 = u_xlat46;
  let x_1199 : f32 = u_xlat4.x;
  let x_1201 : f32 = u_xlat46;
  u_xlat19 = ((x_1197 * x_1199) + -(x_1201));
  let x_1204 : f32 = u_xlat19;
  let x_1205 : f32 = u_xlat46;
  u_xlat46 = ((x_1204 * x_1205) + 1.0f);
  let x_1209 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1209 * 0.318309873f);
  let x_1213 : f32 = u_xlat46;
  let x_1214 : f32 = u_xlat46;
  u_xlat46 = ((x_1213 * x_1214) + 0.0000001f);
  let x_1219 : f32 = u_xlat4.x;
  let x_1220 : f32 = u_xlat46;
  u_xlat46 = (x_1219 / x_1220);
  let x_1223 : f32 = u_xlat30.x;
  let x_1224 : f32 = u_xlat46;
  u_xlat30.x = (x_1223 * x_1224);
  let x_1227 : f32 = u_xlat45;
  let x_1229 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1227 * x_1229);
  let x_1233 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1233 * 3.141592741f);
  let x_1238 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1238, 0.0f);
  let x_1241 : f32 = u_xlat33;
  let x_1242 : f32 = u_xlat33;
  u_xlat45 = ((x_1241 * x_1242) + 1.0f);
  let x_1245 : f32 = u_xlat45;
  u_xlat45 = (1.0f / x_1245);
  let x_1247 : vec3<f32> = u_xlat1;
  let x_1248 : vec3<f32> = u_xlat1;
  u_xlat46 = dot(x_1247, x_1248);
  let x_1250 : f32 = u_xlat46;
  u_xlatb46 = !((x_1250 == 0.0f));
  let x_1252 : bool = u_xlatb46;
  u_xlat46 = select(0.0f, 1.0f, x_1252);
  let x_1255 : f32 = u_xlat30.x;
  let x_1256 : f32 = u_xlat46;
  u_xlat30.x = (x_1255 * x_1256);
  let x_1260 : f32 = u_xlat0.y;
  let x_1262 : f32 = x_45.x_GlossMapScale;
  let x_1265 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1260 * x_1262) + -(x_1265));
  let x_1270 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1270 + 1.0f);
  let x_1274 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1274, 0.0f, 1.0f);
  let x_1277 : f32 = u_xlat18;
  let x_1279 : vec3<f32> = u_xlat7;
  u_xlat4 = (vec3<f32>(x_1277, x_1277, x_1277) * x_1279);
  let x_1281 : vec4<f32> = u_xlat8;
  let x_1283 : f32 = u_xlat47;
  let x_1286 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_1281.x, x_1281.y, x_1281.z) * vec3<f32>(x_1283, x_1283, x_1283)) + x_1286);
  let x_1288 : vec3<f32> = u_xlat7;
  let x_1289 : vec2<f32> = u_xlat30;
  let x_1291 : vec3<f32> = (x_1288 * vec3<f32>(x_1289.x, x_1289.x, x_1289.x));
  let x_1292 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
  let x_1296 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_1296) + 1.0f);
  let x_1301 : f32 = u_xlat15.x;
  let x_1303 : f32 = u_xlat15.x;
  u_xlat30.x = (x_1301 * x_1303);
  let x_1307 : f32 = u_xlat30.x;
  let x_1309 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1307 * x_1309);
  let x_1313 : f32 = u_xlat15.x;
  let x_1315 : f32 = u_xlat30.x;
  u_xlat15.x = (x_1313 * x_1315);
  let x_1318 : vec3<f32> = u_xlat1;
  let x_1321 : vec3<f32> = (-(x_1318) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
  let x_1324 : vec4<f32> = u_xlat3;
  let x_1326 : vec3<f32> = u_xlat15;
  let x_1329 : vec3<f32> = u_xlat1;
  let x_1330 : vec3<f32> = ((vec3<f32>(x_1324.x, x_1324.y, x_1324.z) * vec3<f32>(x_1326.x, x_1326.x, x_1326.x)) + x_1329);
  let x_1331 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1331.w);
  let x_1333 : vec4<f32> = u_xlat3;
  let x_1335 : vec4<f32> = u_xlat6;
  let x_1337 : vec3<f32> = (vec3<f32>(x_1333.x, x_1333.y, x_1333.z) * vec3<f32>(x_1335.x, x_1335.y, x_1335.z));
  let x_1338 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
  let x_1340 : vec3<f32> = u_xlat2;
  let x_1341 : vec3<f32> = u_xlat4;
  let x_1343 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_1340 * x_1341) + vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
  let x_1346 : vec4<f32> = u_xlat5;
  let x_1348 : f32 = u_xlat45;
  u_xlat15 = (vec3<f32>(x_1346.x, x_1346.y, x_1346.z) * vec3<f32>(x_1348, x_1348, x_1348));
  let x_1351 : vec3<f32> = u_xlat1;
  let x_1353 : vec3<f32> = u_xlat0;
  let x_1355 : vec3<f32> = (-(x_1351) + vec3<f32>(x_1353.x, x_1353.x, x_1353.x));
  let x_1356 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
  let x_1358 : f32 = u_xlat48;
  let x_1360 : vec4<f32> = u_xlat3;
  let x_1363 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1358, x_1358, x_1358) * vec3<f32>(x_1360.x, x_1360.y, x_1360.z)) + x_1363);
  let x_1365 : vec3<f32> = u_xlat15;
  let x_1366 : vec3<f32> = u_xlat1;
  let x_1368 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_1365 * x_1366) + x_1368);
  let x_1375 : vec4<f32> = vs_TEXCOORD0;
  let x_1377 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_1375.x, x_1375.y));
  u_xlat1 = vec3<f32>(x_1377.x, x_1377.y, x_1377.z);
  let x_1379 : vec3<f32> = u_xlat1;
  let x_1382 : vec4<f32> = x_45.x_EmissionColor;
  let x_1385 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_1379 * vec3<f32>(x_1382.x, x_1382.y, x_1382.z)) + x_1385);
  let x_1388 : f32 = vs_TEXCOORD1.w;
  let x_1390 : f32 = x_45.x_ProjectionParams.y;
  u_xlat45 = (x_1388 / x_1390);
  let x_1392 : f32 = u_xlat45;
  u_xlat45 = (-(x_1392) + 1.0f);
  let x_1395 : f32 = u_xlat45;
  let x_1397 : f32 = x_45.x_ProjectionParams.z;
  u_xlat45 = (x_1395 * x_1397);
  let x_1399 : f32 = u_xlat45;
  u_xlat45 = max(x_1399, 0.0f);
  let x_1401 : f32 = u_xlat45;
  let x_1404 : f32 = x_45.unity_FogParams.x;
  u_xlat45 = (x_1401 * x_1404);
  let x_1406 : f32 = u_xlat45;
  let x_1407 : f32 = u_xlat45;
  u_xlat45 = (x_1406 * -(x_1407));
  let x_1410 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1410);
  let x_1412 : vec3<f32> = u_xlat0;
  let x_1415 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1412 + -(vec3<f32>(x_1415.x, x_1415.y, x_1415.z)));
  let x_1421 : f32 = u_xlat45;
  let x_1423 : vec3<f32> = u_xlat0;
  let x_1426 : vec4<f32> = x_45.unity_FogColor;
  let x_1428 : vec3<f32> = ((vec3<f32>(x_1421, x_1421, x_1421) * x_1423) + vec3<f32>(x_1426.x, x_1426.y, x_1426.z));
  let x_1429 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

