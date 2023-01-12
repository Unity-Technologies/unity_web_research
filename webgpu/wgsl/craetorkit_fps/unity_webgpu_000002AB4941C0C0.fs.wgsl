struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
  var x_709 : f32;
  var x_721 : f32;
  var x_733 : f32;
  var u_xlatb48 : bool;
  var u_xlat48 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_890 : f32;
  var x_902 : f32;
  var x_914 : f32;
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
    let x_621 : vec4<f32> = x_45.unity_SHAg;
    let x_622 : vec4<f32> = u_xlat3;
    u_xlat9.y = dot(x_621, x_622);
    let x_627 : vec4<f32> = x_45.unity_SHAb;
    let x_628 : vec4<f32> = u_xlat3;
    u_xlat9.z = dot(x_627, x_628);
  }
  let x_631 : vec4<f32> = u_xlat9;
  let x_634 : vec4<f32> = vs_TEXCOORD5;
  let x_636 : vec3<f32> = (vec3<f32>(x_631.x, x_631.y, x_631.z) + vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_637 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat8;
  let x_642 : vec3<f32> = max(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_643 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_647 : f32 = x_45.unity_SpecCube0_ProbePosition.w;
  u_xlatb45 = (0.0f < x_647);
  let x_649 : bool = u_xlatb45;
  if (x_649) {
    let x_652 : vec4<f32> = u_xlat6;
    let x_654 : vec4<f32> = u_xlat6;
    u_xlat45 = dot(vec3<f32>(x_652.x, x_652.y, x_652.z), vec3<f32>(x_654.x, x_654.y, x_654.z));
    let x_657 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_657);
    let x_659 : f32 = u_xlat45;
    let x_661 : vec4<f32> = u_xlat6;
    let x_663 : vec3<f32> = (vec3<f32>(x_659, x_659, x_659) * vec3<f32>(x_661.x, x_661.y, x_661.z));
    let x_664 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
    let x_666 : vec4<f32> = u_xlat5;
    let x_671 : vec4<f32> = x_45.unity_SpecCube0_BoxMax;
    let x_673 : vec3<f32> = (-(vec3<f32>(x_666.x, x_666.y, x_666.z)) + vec3<f32>(x_671.x, x_671.y, x_671.z));
    let x_674 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
    let x_676 : vec4<f32> = u_xlat10;
    let x_678 : vec4<f32> = u_xlat9;
    let x_680 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) / vec3<f32>(x_678.x, x_678.y, x_678.z));
    let x_681 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
    let x_684 : vec4<f32> = u_xlat5;
    let x_689 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_684.x, x_684.y, x_684.z)) + vec3<f32>(x_689.x, x_689.y, x_689.z));
    let x_692 : vec3<f32> = u_xlat11;
    let x_693 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_692 / vec3<f32>(x_693.x, x_693.y, x_693.z));
    let x_700 : vec4<f32> = u_xlat9;
    let x_703 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_700.x, x_700.y, x_700.z, x_700.x));
    u_xlatb12 = vec3<bool>(x_703.x, x_703.y, x_703.z);
    let x_706 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_706;
    let x_708 : bool = u_xlatb12.x;
    if (x_708) {
      let x_713 : f32 = u_xlat10.x;
      x_709 = x_713;
    } else {
      let x_716 : f32 = u_xlat11.x;
      x_709 = x_716;
    }
    let x_717 : f32 = x_709;
    hlslcc_movcTemp.x = x_717;
    let x_720 : bool = u_xlatb12.y;
    if (x_720) {
      let x_725 : f32 = u_xlat10.y;
      x_721 = x_725;
    } else {
      let x_728 : f32 = u_xlat11.y;
      x_721 = x_728;
    }
    let x_729 : f32 = x_721;
    hlslcc_movcTemp.y = x_729;
    let x_732 : bool = u_xlatb12.z;
    if (x_732) {
      let x_737 : f32 = u_xlat10.z;
      x_733 = x_737;
    } else {
      let x_740 : f32 = u_xlat11.z;
      x_733 = x_740;
    }
    let x_741 : f32 = x_733;
    hlslcc_movcTemp.z = x_741;
    let x_743 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_743;
    let x_745 : f32 = u_xlat10.y;
    let x_747 : f32 = u_xlat10.x;
    u_xlat45 = min(x_745, x_747);
    let x_750 : f32 = u_xlat10.z;
    let x_751 : f32 = u_xlat45;
    u_xlat45 = min(x_750, x_751);
    let x_753 : vec4<f32> = u_xlat5;
    let x_756 : vec4<f32> = x_45.unity_SpecCube0_ProbePosition;
    let x_759 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) + -(vec3<f32>(x_756.x, x_756.y, x_756.z)));
    let x_760 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
    let x_762 : vec4<f32> = u_xlat9;
    let x_764 : f32 = u_xlat45;
    let x_767 : vec4<f32> = u_xlat10;
    let x_769 : vec3<f32> = ((vec3<f32>(x_762.x, x_762.y, x_762.z) * vec3<f32>(x_764, x_764, x_764)) + vec3<f32>(x_767.x, x_767.y, x_767.z));
    let x_770 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  } else {
    let x_773 : vec4<f32> = u_xlat6;
    let x_774 : vec3<f32> = vec3<f32>(x_773.x, x_773.y, x_773.z);
    let x_775 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  }
  let x_777 : f32 = u_xlat49;
  u_xlat45 = ((-(x_777) * 0.699999988f) + 1.700000048f);
  let x_783 : f32 = u_xlat45;
  let x_784 : f32 = u_xlat49;
  u_xlat45 = (x_783 * x_784);
  let x_786 : f32 = u_xlat45;
  u_xlat45 = (x_786 * 6.0f);
  let x_797 : vec4<f32> = u_xlat9;
  let x_799 : f32 = u_xlat45;
  let x_800 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_797.x, x_797.y, x_797.z), x_799);
  u_xlat9 = x_800;
  let x_802 : f32 = u_xlat9.w;
  u_xlat46 = (x_802 + -1.0f);
  let x_806 : f32 = x_45.unity_SpecCube0_HDR.w;
  let x_807 : f32 = u_xlat46;
  u_xlat46 = ((x_806 * x_807) + 1.0f);
  let x_810 : f32 = u_xlat46;
  u_xlat46 = log2(x_810);
  let x_812 : f32 = u_xlat46;
  let x_814 : f32 = x_45.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_812 * x_814);
  let x_816 : f32 = u_xlat46;
  u_xlat46 = exp2(x_816);
  let x_818 : f32 = u_xlat46;
  let x_820 : f32 = x_45.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_818 * x_820);
  let x_822 : vec4<f32> = u_xlat9;
  let x_824 : f32 = u_xlat46;
  let x_826 : vec3<f32> = (vec3<f32>(x_822.x, x_822.y, x_822.z) * vec3<f32>(x_824, x_824, x_824));
  let x_827 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_831 : f32 = x_45.unity_SpecCube0_BoxMin.w;
  u_xlatb48 = (x_831 < 0.999989986f);
  let x_834 : bool = u_xlatb48;
  if (x_834) {
    let x_839 : f32 = x_45.unity_SpecCube1_ProbePosition.w;
    u_xlatb48 = (0.0f < x_839);
    let x_841 : bool = u_xlatb48;
    if (x_841) {
      let x_845 : vec4<f32> = u_xlat6;
      let x_847 : vec4<f32> = u_xlat6;
      u_xlat48 = dot(vec3<f32>(x_845.x, x_845.y, x_845.z), vec3<f32>(x_847.x, x_847.y, x_847.z));
      let x_850 : f32 = u_xlat48;
      u_xlat48 = inverseSqrt(x_850);
      let x_852 : f32 = u_xlat48;
      let x_854 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_852, x_852, x_852) * vec3<f32>(x_854.x, x_854.y, x_854.z));
      let x_858 : vec4<f32> = u_xlat5;
      let x_863 : vec4<f32> = x_45.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(vec3<f32>(x_858.x, x_858.y, x_858.z)) + vec3<f32>(x_863.x, x_863.y, x_863.z));
      let x_866 : vec3<f32> = u_xlat12;
      let x_867 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_866 / x_867);
      let x_870 : vec4<f32> = u_xlat5;
      let x_875 : vec4<f32> = x_45.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(vec3<f32>(x_870.x, x_870.y, x_870.z)) + vec3<f32>(x_875.x, x_875.y, x_875.z));
      let x_878 : vec3<f32> = u_xlat13;
      let x_879 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_878 / x_879);
      let x_882 : vec3<f32> = u_xlat11;
      let x_884 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_882.x, x_882.y, x_882.z, x_882.x));
      u_xlatb14 = vec3<bool>(x_884.x, x_884.y, x_884.z);
      let x_887 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_887;
      let x_889 : bool = u_xlatb14.x;
      if (x_889) {
        let x_894 : f32 = u_xlat12.x;
        x_890 = x_894;
      } else {
        let x_897 : f32 = u_xlat13.x;
        x_890 = x_897;
      }
      let x_898 : f32 = x_890;
      hlslcc_movcTemp_1.x = x_898;
      let x_901 : bool = u_xlatb14.y;
      if (x_901) {
        let x_906 : f32 = u_xlat12.y;
        x_902 = x_906;
      } else {
        let x_909 : f32 = u_xlat13.y;
        x_902 = x_909;
      }
      let x_910 : f32 = x_902;
      hlslcc_movcTemp_1.y = x_910;
      let x_913 : bool = u_xlatb14.z;
      if (x_913) {
        let x_918 : f32 = u_xlat12.z;
        x_914 = x_918;
      } else {
        let x_921 : f32 = u_xlat13.z;
        x_914 = x_921;
      }
      let x_922 : f32 = x_914;
      hlslcc_movcTemp_1.z = x_922;
      let x_924 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_924;
      let x_926 : f32 = u_xlat12.y;
      let x_928 : f32 = u_xlat12.x;
      u_xlat48 = min(x_926, x_928);
      let x_931 : f32 = u_xlat12.z;
      let x_932 : f32 = u_xlat48;
      u_xlat48 = min(x_931, x_932);
      let x_934 : vec4<f32> = u_xlat5;
      let x_937 : vec4<f32> = x_45.unity_SpecCube1_ProbePosition;
      let x_940 : vec3<f32> = (vec3<f32>(x_934.x, x_934.y, x_934.z) + -(vec3<f32>(x_937.x, x_937.y, x_937.z)));
      let x_941 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
      let x_943 : vec3<f32> = u_xlat11;
      let x_944 : f32 = u_xlat48;
      let x_947 : vec4<f32> = u_xlat5;
      let x_949 : vec3<f32> = ((x_943 * vec3<f32>(x_944, x_944, x_944)) + vec3<f32>(x_947.x, x_947.y, x_947.z));
      let x_950 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
    }
    let x_956 : vec4<f32> = u_xlat6;
    let x_958 : f32 = u_xlat45;
    let x_959 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_956.x, x_956.y, x_956.z), x_958);
    u_xlat5 = x_959;
    let x_961 : f32 = u_xlat5.w;
    u_xlat45 = (x_961 + -1.0f);
    let x_965 : f32 = x_45.unity_SpecCube1_HDR.w;
    let x_966 : f32 = u_xlat45;
    u_xlat45 = ((x_965 * x_966) + 1.0f);
    let x_969 : f32 = u_xlat45;
    u_xlat45 = log2(x_969);
    let x_971 : f32 = u_xlat45;
    let x_973 : f32 = x_45.unity_SpecCube1_HDR.y;
    u_xlat45 = (x_971 * x_973);
    let x_975 : f32 = u_xlat45;
    u_xlat45 = exp2(x_975);
    let x_977 : f32 = u_xlat45;
    let x_979 : f32 = x_45.unity_SpecCube1_HDR.x;
    u_xlat45 = (x_977 * x_979);
    let x_981 : vec4<f32> = u_xlat5;
    let x_983 : f32 = u_xlat45;
    let x_985 : vec3<f32> = (vec3<f32>(x_981.x, x_981.y, x_981.z) * vec3<f32>(x_983, x_983, x_983));
    let x_986 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
    let x_988 : f32 = u_xlat46;
    let x_990 : vec4<f32> = u_xlat9;
    let x_993 : vec4<f32> = u_xlat5;
    let x_996 : vec3<f32> = ((vec3<f32>(x_988, x_988, x_988) * vec3<f32>(x_990.x, x_990.y, x_990.z)) + -(vec3<f32>(x_993.x, x_993.y, x_993.z)));
    let x_997 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
    let x_1000 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    let x_1002 : vec4<f32> = u_xlat6;
    let x_1005 : vec4<f32> = u_xlat5;
    let x_1007 : vec3<f32> = ((vec3<f32>(x_1000.w, x_1000.w, x_1000.w) * vec3<f32>(x_1002.x, x_1002.y, x_1002.z)) + vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
    let x_1008 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
  }
  let x_1010 : f32 = u_xlat47;
  let x_1012 : vec4<f32> = u_xlat10;
  let x_1014 : vec3<f32> = (vec3<f32>(x_1010, x_1010, x_1010) * vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1015 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  let x_1017 : vec4<f32> = vs_TEXCOORD1;
  let x_1020 : vec2<f32> = u_xlat30;
  let x_1024 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_1026 : vec3<f32> = ((-(vec3<f32>(x_1017.x, x_1017.y, x_1017.z)) * vec3<f32>(x_1020.x, x_1020.x, x_1020.x)) + vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
  let x_1027 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  let x_1029 : vec4<f32> = u_xlat6;
  let x_1031 : vec4<f32> = u_xlat6;
  u_xlat30.x = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
  let x_1036 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1036, 0.001f);
  let x_1041 : f32 = u_xlat30.x;
  u_xlat30.x = inverseSqrt(x_1041);
  let x_1044 : vec2<f32> = u_xlat30;
  let x_1046 : vec4<f32> = u_xlat6;
  let x_1048 : vec3<f32> = (vec3<f32>(x_1044.x, x_1044.x, x_1044.x) * vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
  let x_1049 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
  let x_1051 : vec4<f32> = u_xlat3;
  let x_1053 : vec3<f32> = u_xlat4;
  u_xlat30.x = dot(vec3<f32>(x_1051.x, x_1051.y, x_1051.z), -(x_1053));
  let x_1057 : vec4<f32> = u_xlat3;
  let x_1060 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  u_xlat45 = dot(vec3<f32>(x_1057.x, x_1057.y, x_1057.z), vec3<f32>(x_1060.x, x_1060.y, x_1060.z));
  let x_1063 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1063, 0.0f, 1.0f);
  let x_1065 : vec4<f32> = u_xlat3;
  let x_1067 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_1065.x, x_1065.y, x_1065.z), vec3<f32>(x_1067.x, x_1067.y, x_1067.z));
  let x_1070 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1070, 0.0f, 1.0f);
  let x_1073 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_1075 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_1073.x, x_1073.y, x_1073.z), vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
  let x_1080 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1080, 0.0f, 1.0f);
  let x_1085 : f32 = u_xlat3.x;
  let x_1087 : f32 = u_xlat3.x;
  u_xlat18 = (x_1085 * x_1087);
  let x_1089 : f32 = u_xlat18;
  let x_1091 : f32 = u_xlat49;
  u_xlat18 = dot(vec2<f32>(x_1089, x_1089), vec2<f32>(x_1091, x_1091));
  let x_1094 : f32 = u_xlat18;
  u_xlat18 = (x_1094 + -0.5f);
  let x_1098 : f32 = u_xlat45;
  u_xlat33 = (-(x_1098) + 1.0f);
  let x_1101 : f32 = u_xlat33;
  let x_1102 : f32 = u_xlat33;
  u_xlat48 = (x_1101 * x_1102);
  let x_1104 : f32 = u_xlat48;
  let x_1105 : f32 = u_xlat48;
  u_xlat48 = (x_1104 * x_1105);
  let x_1107 : f32 = u_xlat33;
  let x_1108 : f32 = u_xlat48;
  u_xlat33 = (x_1107 * x_1108);
  let x_1110 : f32 = u_xlat18;
  let x_1111 : f32 = u_xlat33;
  u_xlat33 = ((x_1110 * x_1111) + 1.0f);
  let x_1115 : f32 = u_xlat30.x;
  u_xlat48 = (-(abs(x_1115)) + 1.0f);
  let x_1119 : f32 = u_xlat48;
  let x_1120 : f32 = u_xlat48;
  u_xlat4.x = (x_1119 * x_1120);
  let x_1124 : f32 = u_xlat4.x;
  let x_1126 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1124 * x_1126);
  let x_1129 : f32 = u_xlat48;
  let x_1131 : f32 = u_xlat4.x;
  u_xlat48 = (x_1129 * x_1131);
  let x_1133 : f32 = u_xlat18;
  let x_1134 : f32 = u_xlat48;
  u_xlat18 = ((x_1133 * x_1134) + 1.0f);
  let x_1137 : f32 = u_xlat18;
  let x_1138 : f32 = u_xlat33;
  u_xlat18 = (x_1137 * x_1138);
  let x_1140 : f32 = u_xlat45;
  let x_1141 : f32 = u_xlat18;
  u_xlat18 = (x_1140 * x_1141);
  let x_1143 : f32 = u_xlat49;
  let x_1144 : f32 = u_xlat49;
  u_xlat33 = (x_1143 * x_1144);
  let x_1146 : f32 = u_xlat33;
  u_xlat33 = max(x_1146, 0.002f);
  let x_1149 : f32 = u_xlat33;
  u_xlat4.x = (-(x_1149) + 1.0f);
  let x_1155 : f32 = u_xlat30.x;
  let x_1158 : f32 = u_xlat4.x;
  let x_1160 : f32 = u_xlat33;
  u_xlat19 = ((abs(x_1155) * x_1158) + x_1160);
  let x_1162 : f32 = u_xlat45;
  let x_1164 : f32 = u_xlat4.x;
  let x_1166 : f32 = u_xlat33;
  u_xlat4.x = ((x_1162 * x_1164) + x_1166);
  let x_1170 : f32 = u_xlat30.x;
  let x_1173 : f32 = u_xlat4.x;
  u_xlat30.x = (abs(x_1170) * x_1173);
  let x_1176 : f32 = u_xlat45;
  let x_1177 : f32 = u_xlat19;
  let x_1180 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1176 * x_1177) + x_1180);
  let x_1184 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1184 + 0.00001f);
  let x_1189 : f32 = u_xlat30.x;
  u_xlat30.x = (0.5f / x_1189);
  let x_1192 : f32 = u_xlat33;
  let x_1193 : f32 = u_xlat33;
  u_xlat4.x = (x_1192 * x_1193);
  let x_1196 : f32 = u_xlat46;
  let x_1198 : f32 = u_xlat4.x;
  let x_1200 : f32 = u_xlat46;
  u_xlat19 = ((x_1196 * x_1198) + -(x_1200));
  let x_1203 : f32 = u_xlat19;
  let x_1204 : f32 = u_xlat46;
  u_xlat46 = ((x_1203 * x_1204) + 1.0f);
  let x_1208 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1208 * 0.318309873f);
  let x_1212 : f32 = u_xlat46;
  let x_1213 : f32 = u_xlat46;
  u_xlat46 = ((x_1212 * x_1213) + 0.0000001f);
  let x_1218 : f32 = u_xlat4.x;
  let x_1219 : f32 = u_xlat46;
  u_xlat46 = (x_1218 / x_1219);
  let x_1222 : f32 = u_xlat30.x;
  let x_1223 : f32 = u_xlat46;
  u_xlat30.x = (x_1222 * x_1223);
  let x_1226 : f32 = u_xlat45;
  let x_1228 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1226 * x_1228);
  let x_1232 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1232 * 3.141592741f);
  let x_1237 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1237, 0.0f);
  let x_1240 : f32 = u_xlat33;
  let x_1241 : f32 = u_xlat33;
  u_xlat45 = ((x_1240 * x_1241) + 1.0f);
  let x_1244 : f32 = u_xlat45;
  u_xlat45 = (1.0f / x_1244);
  let x_1246 : vec3<f32> = u_xlat1;
  let x_1247 : vec3<f32> = u_xlat1;
  u_xlat46 = dot(x_1246, x_1247);
  let x_1249 : f32 = u_xlat46;
  u_xlatb46 = !((x_1249 == 0.0f));
  let x_1251 : bool = u_xlatb46;
  u_xlat46 = select(0.0f, 1.0f, x_1251);
  let x_1254 : f32 = u_xlat30.x;
  let x_1255 : f32 = u_xlat46;
  u_xlat30.x = (x_1254 * x_1255);
  let x_1259 : f32 = u_xlat0.y;
  let x_1261 : f32 = x_45.x_GlossMapScale;
  let x_1264 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1259 * x_1261) + -(x_1264));
  let x_1269 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1269 + 1.0f);
  let x_1273 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1273, 0.0f, 1.0f);
  let x_1276 : f32 = u_xlat18;
  let x_1278 : vec3<f32> = u_xlat7;
  u_xlat4 = (vec3<f32>(x_1276, x_1276, x_1276) * x_1278);
  let x_1280 : vec4<f32> = u_xlat8;
  let x_1282 : f32 = u_xlat47;
  let x_1285 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_1280.x, x_1280.y, x_1280.z) * vec3<f32>(x_1282, x_1282, x_1282)) + x_1285);
  let x_1287 : vec3<f32> = u_xlat7;
  let x_1288 : vec2<f32> = u_xlat30;
  let x_1290 : vec3<f32> = (x_1287 * vec3<f32>(x_1288.x, x_1288.x, x_1288.x));
  let x_1291 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
  let x_1295 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_1295) + 1.0f);
  let x_1300 : f32 = u_xlat15.x;
  let x_1302 : f32 = u_xlat15.x;
  u_xlat30.x = (x_1300 * x_1302);
  let x_1306 : f32 = u_xlat30.x;
  let x_1308 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1306 * x_1308);
  let x_1312 : f32 = u_xlat15.x;
  let x_1314 : f32 = u_xlat30.x;
  u_xlat15.x = (x_1312 * x_1314);
  let x_1317 : vec3<f32> = u_xlat1;
  let x_1320 : vec3<f32> = (-(x_1317) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1321 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);
  let x_1323 : vec4<f32> = u_xlat3;
  let x_1325 : vec3<f32> = u_xlat15;
  let x_1328 : vec3<f32> = u_xlat1;
  let x_1329 : vec3<f32> = ((vec3<f32>(x_1323.x, x_1323.y, x_1323.z) * vec3<f32>(x_1325.x, x_1325.x, x_1325.x)) + x_1328);
  let x_1330 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1330.w);
  let x_1332 : vec4<f32> = u_xlat3;
  let x_1334 : vec4<f32> = u_xlat6;
  let x_1336 : vec3<f32> = (vec3<f32>(x_1332.x, x_1332.y, x_1332.z) * vec3<f32>(x_1334.x, x_1334.y, x_1334.z));
  let x_1337 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1337.w);
  let x_1339 : vec3<f32> = u_xlat2;
  let x_1340 : vec3<f32> = u_xlat4;
  let x_1342 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_1339 * x_1340) + vec3<f32>(x_1342.x, x_1342.y, x_1342.z));
  let x_1345 : vec4<f32> = u_xlat5;
  let x_1347 : f32 = u_xlat45;
  u_xlat15 = (vec3<f32>(x_1345.x, x_1345.y, x_1345.z) * vec3<f32>(x_1347, x_1347, x_1347));
  let x_1350 : vec3<f32> = u_xlat1;
  let x_1352 : vec3<f32> = u_xlat0;
  let x_1354 : vec3<f32> = (-(x_1350) + vec3<f32>(x_1352.x, x_1352.x, x_1352.x));
  let x_1355 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
  let x_1357 : f32 = u_xlat48;
  let x_1359 : vec4<f32> = u_xlat3;
  let x_1362 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1357, x_1357, x_1357) * vec3<f32>(x_1359.x, x_1359.y, x_1359.z)) + x_1362);
  let x_1364 : vec3<f32> = u_xlat15;
  let x_1365 : vec3<f32> = u_xlat1;
  let x_1367 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_1364 * x_1365) + x_1367);
  let x_1374 : vec4<f32> = vs_TEXCOORD0;
  let x_1376 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_1374.x, x_1374.y));
  u_xlat1 = vec3<f32>(x_1376.x, x_1376.y, x_1376.z);
  let x_1380 : vec3<f32> = u_xlat1;
  let x_1383 : vec4<f32> = x_45.x_EmissionColor;
  let x_1386 : vec3<f32> = u_xlat0;
  let x_1387 : vec3<f32> = ((x_1380 * vec3<f32>(x_1383.x, x_1383.y, x_1383.z)) + x_1386);
  let x_1388 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1387.x, x_1387.y, x_1387.z, x_1388.w);
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

