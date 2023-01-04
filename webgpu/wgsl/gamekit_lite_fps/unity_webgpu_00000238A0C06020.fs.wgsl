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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BumpMap : sampler;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlatb46 : bool;

var<private> u_xlatb47 : bool;

var<private> u_xlat47 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(9) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(11) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(4) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_OcclusionMap : sampler;

var<private> u_xlat50 : f32;

var<private> u_xlatb45 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb12 : vec3<bool>;

@group(0) @binding(7) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb48 : bool;

var<private> u_xlat48 : f32;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb14 : vec3<bool>;

@group(0) @binding(8) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlat15 : vec3<f32>;

@group(0) @binding(6) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_331 : vec3<f32>;
  var x_525 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_712 : f32;
  var x_724 : f32;
  var x_736 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_893 : f32;
  var x_905 : f32;
  var x_917 : f32;
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
      let x_334 : vec4<f32> = u_xlat6;
      x_331 = vec3<f32>(x_334.x, x_334.y, x_334.z);
    } else {
      let x_337 : vec4<f32> = u_xlat5;
      x_331 = vec3<f32>(x_337.x, x_337.y, x_337.z);
    }
    let x_339 : vec3<f32> = x_331;
    let x_340 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
    let x_342 : vec4<f32> = u_xlat6;
    let x_346 : vec3<f32> = x_45.unity_ProbeVolumeMin;
    let x_348 : vec3<f32> = (vec3<f32>(x_342.x, x_342.y, x_342.z) + -(x_346));
    let x_349 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
    let x_351 : vec4<f32> = u_xlat6;
    let x_355 : vec3<f32> = x_45.unity_ProbeVolumeSizeInv;
    let x_356 : vec3<f32> = (vec3<f32>(x_351.x, x_351.y, x_351.z) * x_355);
    let x_357 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_357.x, x_356.x, x_356.y, x_356.z);
    let x_361 : f32 = u_xlat6.y;
    u_xlat47 = ((x_361 * 0.25f) + 0.75f);
    let x_368 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat49 = ((x_368 * 0.5f) + 0.75f);
    let x_372 : f32 = u_xlat47;
    let x_373 : f32 = u_xlat49;
    u_xlat6.x = max(x_372, x_373);
    let x_384 : vec4<f32> = u_xlat6;
    let x_386 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_384.x, x_384.z, x_384.w));
    u_xlat6 = x_386;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_392 : vec4<f32> = u_xlat6;
  let x_395 : vec4<f32> = x_45.unity_OcclusionMaskSelector;
  u_xlat47 = dot(x_392, x_395);
  let x_397 : f32 = u_xlat47;
  u_xlat47 = clamp(x_397, 0.0f, 1.0f);
  let x_400 : vec4<f32> = vs_TEXCOORD7;
  let x_402 : vec4<f32> = vs_TEXCOORD7;
  let x_404 : vec2<f32> = (vec2<f32>(x_400.x, x_400.y) / vec2<f32>(x_402.w, x_402.w));
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
  let x_412 : vec4<f32> = u_xlat6;
  let x_414 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_412.x, x_412.y));
  u_xlat49 = x_414.x;
  let x_416 : f32 = u_xlat47;
  let x_417 : f32 = u_xlat49;
  u_xlat47 = (x_416 + -(x_417));
  let x_420 : f32 = u_xlat45;
  let x_421 : f32 = u_xlat47;
  let x_423 : f32 = u_xlat49;
  u_xlat45 = ((x_420 * x_421) + x_423);
  let x_430 : vec4<f32> = vs_TEXCOORD0;
  let x_432 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_430.x, x_430.y));
  u_xlat47 = x_432.y;
  let x_436 : f32 = x_45.x_OcclusionStrength;
  u_xlat49 = (-(x_436) + 1.0f);
  let x_439 : f32 = u_xlat47;
  let x_441 : f32 = x_45.x_OcclusionStrength;
  let x_443 : f32 = u_xlat49;
  u_xlat47 = ((x_439 * x_441) + x_443);
  let x_446 : f32 = u_xlat0.y;
  let x_450 : f32 = x_45.x_GlossMapScale;
  u_xlat49 = ((-(x_446) * x_450) + 1.0f);
  let x_454 : vec3<f32> = u_xlat4;
  let x_455 : vec4<f32> = u_xlat3;
  u_xlat50 = dot(x_454, vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : f32 = u_xlat50;
  let x_459 : f32 = u_xlat50;
  u_xlat50 = (x_458 + x_459);
  let x_461 : vec4<f32> = u_xlat3;
  let x_463 : f32 = u_xlat50;
  let x_467 : vec3<f32> = u_xlat4;
  let x_468 : vec3<f32> = ((vec3<f32>(x_461.x, x_461.y, x_461.z) * -(vec3<f32>(x_463, x_463, x_463))) + x_467);
  let x_469 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : f32 = u_xlat45;
  let x_475 : vec4<f32> = x_45.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_471, x_471, x_471) * vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_478 : bool = u_xlatb46;
  if (x_478) {
    let x_483 : f32 = x_45.unity_ProbeVolumeParams.y;
    u_xlatb45 = (x_483 == 1.0f);
    let x_486 : vec4<f32> = vs_TEXCOORD3;
    let x_489 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[1i];
    let x_491 : vec3<f32> = (vec3<f32>(x_486.w, x_486.w, x_486.w) * vec3<f32>(x_489.x, x_489.y, x_489.z));
    let x_492 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
    let x_495 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[0i];
    let x_497 : vec4<f32> = vs_TEXCOORD2;
    let x_500 : vec4<f32> = u_xlat8;
    let x_502 : vec3<f32> = ((vec3<f32>(x_495.x, x_495.y, x_495.z) * vec3<f32>(x_497.w, x_497.w, x_497.w)) + vec3<f32>(x_500.x, x_500.y, x_500.z));
    let x_503 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
    let x_506 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[2i];
    let x_508 : vec4<f32> = vs_TEXCOORD4;
    let x_511 : vec4<f32> = u_xlat8;
    let x_513 : vec3<f32> = ((vec3<f32>(x_506.x, x_506.y, x_506.z) * vec3<f32>(x_508.w, x_508.w, x_508.w)) + vec3<f32>(x_511.x, x_511.y, x_511.z));
    let x_514 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
    let x_516 : vec4<f32> = u_xlat8;
    let x_519 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[3i];
    let x_521 : vec3<f32> = (vec3<f32>(x_516.x, x_516.y, x_516.z) + vec3<f32>(x_519.x, x_519.y, x_519.z));
    let x_522 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
    let x_524 : bool = u_xlatb45;
    if (x_524) {
      let x_528 : vec4<f32> = u_xlat8;
      x_525 = vec3<f32>(x_528.x, x_528.y, x_528.z);
    } else {
      let x_531 : vec4<f32> = u_xlat5;
      x_525 = vec3<f32>(x_531.x, x_531.y, x_531.z);
    }
    let x_533 : vec3<f32> = x_525;
    let x_534 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
    let x_536 : vec4<f32> = u_xlat8;
    let x_539 : vec3<f32> = x_45.unity_ProbeVolumeMin;
    let x_541 : vec3<f32> = (vec3<f32>(x_536.x, x_536.y, x_536.z) + -(x_539));
    let x_542 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
    let x_544 : vec4<f32> = u_xlat8;
    let x_547 : vec3<f32> = x_45.unity_ProbeVolumeSizeInv;
    let x_548 : vec3<f32> = (vec3<f32>(x_544.x, x_544.y, x_544.z) * x_547);
    let x_549 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_549.x, x_548.x, x_548.y, x_548.z);
    let x_552 : f32 = u_xlat8.y;
    u_xlat45 = (x_552 * 0.25f);
    let x_555 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat46 = (x_555 * 0.5f);
    let x_558 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat50 = ((-(x_558) * 0.5f) + 0.25f);
    let x_562 : f32 = u_xlat45;
    let x_563 : f32 = u_xlat46;
    u_xlat45 = max(x_562, x_563);
    let x_565 : f32 = u_xlat50;
    let x_566 : f32 = u_xlat45;
    u_xlat8.x = min(x_565, x_566);
    let x_573 : vec4<f32> = u_xlat8;
    let x_575 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_573.x, x_573.z, x_573.w));
    u_xlat9 = x_575;
    let x_577 : vec4<f32> = u_xlat8;
    let x_580 : vec3<f32> = (vec3<f32>(x_577.x, x_577.z, x_577.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_581 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
    let x_586 : vec4<f32> = u_xlat10;
    let x_588 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_586.x, x_586.y, x_586.z));
    u_xlat10 = x_588;
    let x_589 : vec4<f32> = u_xlat8;
    let x_592 : vec3<f32> = (vec3<f32>(x_589.x, x_589.z, x_589.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_593 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
    let x_598 : vec4<f32> = u_xlat8;
    let x_600 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_598.x, x_598.y, x_598.z));
    u_xlat8 = x_600;
    u_xlat3.w = 1.0f;
    let x_602 : vec4<f32> = u_xlat9;
    let x_603 : vec4<f32> = u_xlat3;
    u_xlat9.x = dot(x_602, x_603);
    let x_606 : vec4<f32> = u_xlat10;
    let x_607 : vec4<f32> = u_xlat3;
    u_xlat9.y = dot(x_606, x_607);
    let x_610 : vec4<f32> = u_xlat8;
    let x_611 : vec4<f32> = u_xlat3;
    u_xlat9.z = dot(x_610, x_611);
  } else {
    u_xlat3.w = 1.0f;
    let x_617 : vec4<f32> = x_45.unity_SHAr;
    let x_618 : vec4<f32> = u_xlat3;
    u_xlat9.x = dot(x_617, x_618);
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
    let x_708 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_708;
    let x_710 : bool = u_xlatb12.x;
    if (x_710) {
      let x_716 : f32 = u_xlat10.x;
      x_712 = x_716;
    } else {
      let x_719 : f32 = u_xlat11.x;
      x_712 = x_719;
    }
    let x_720 : f32 = x_712;
    hlslcc_movcTemp.x = x_720;
    let x_723 : bool = u_xlatb12.y;
    if (x_723) {
      let x_728 : f32 = u_xlat10.y;
      x_724 = x_728;
    } else {
      let x_731 : f32 = u_xlat11.y;
      x_724 = x_731;
    }
    let x_732 : f32 = x_724;
    hlslcc_movcTemp.y = x_732;
    let x_735 : bool = u_xlatb12.z;
    if (x_735) {
      let x_740 : f32 = u_xlat10.z;
      x_736 = x_740;
    } else {
      let x_743 : f32 = u_xlat11.z;
      x_736 = x_743;
    }
    let x_744 : f32 = x_736;
    hlslcc_movcTemp.z = x_744;
    let x_746 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_746;
    let x_748 : f32 = u_xlat10.y;
    let x_750 : f32 = u_xlat10.x;
    u_xlat45 = min(x_748, x_750);
    let x_753 : f32 = u_xlat10.z;
    let x_754 : f32 = u_xlat45;
    u_xlat45 = min(x_753, x_754);
    let x_756 : vec4<f32> = u_xlat5;
    let x_759 : vec4<f32> = x_45.unity_SpecCube0_ProbePosition;
    let x_762 : vec3<f32> = (vec3<f32>(x_756.x, x_756.y, x_756.z) + -(vec3<f32>(x_759.x, x_759.y, x_759.z)));
    let x_763 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
    let x_765 : vec4<f32> = u_xlat9;
    let x_767 : f32 = u_xlat45;
    let x_770 : vec4<f32> = u_xlat10;
    let x_772 : vec3<f32> = ((vec3<f32>(x_765.x, x_765.y, x_765.z) * vec3<f32>(x_767, x_767, x_767)) + vec3<f32>(x_770.x, x_770.y, x_770.z));
    let x_773 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  } else {
    let x_776 : vec4<f32> = u_xlat6;
    let x_777 : vec3<f32> = vec3<f32>(x_776.x, x_776.y, x_776.z);
    let x_778 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  }
  let x_780 : f32 = u_xlat49;
  u_xlat45 = ((-(x_780) * 0.699999988f) + 1.700000048f);
  let x_786 : f32 = u_xlat45;
  let x_787 : f32 = u_xlat49;
  u_xlat45 = (x_786 * x_787);
  let x_789 : f32 = u_xlat45;
  u_xlat45 = (x_789 * 6.0f);
  let x_800 : vec4<f32> = u_xlat9;
  let x_802 : f32 = u_xlat45;
  let x_803 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_800.x, x_800.y, x_800.z), x_802);
  u_xlat9 = x_803;
  let x_805 : f32 = u_xlat9.w;
  u_xlat46 = (x_805 + -1.0f);
  let x_809 : f32 = x_45.unity_SpecCube0_HDR.w;
  let x_810 : f32 = u_xlat46;
  u_xlat46 = ((x_809 * x_810) + 1.0f);
  let x_813 : f32 = u_xlat46;
  u_xlat46 = log2(x_813);
  let x_815 : f32 = u_xlat46;
  let x_817 : f32 = x_45.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_815 * x_817);
  let x_819 : f32 = u_xlat46;
  u_xlat46 = exp2(x_819);
  let x_821 : f32 = u_xlat46;
  let x_823 : f32 = x_45.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_821 * x_823);
  let x_825 : vec4<f32> = u_xlat9;
  let x_827 : f32 = u_xlat46;
  let x_829 : vec3<f32> = (vec3<f32>(x_825.x, x_825.y, x_825.z) * vec3<f32>(x_827, x_827, x_827));
  let x_830 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_834 : f32 = x_45.unity_SpecCube0_BoxMin.w;
  u_xlatb48 = (x_834 < 0.999989986f);
  let x_837 : bool = u_xlatb48;
  if (x_837) {
    let x_842 : f32 = x_45.unity_SpecCube1_ProbePosition.w;
    u_xlatb48 = (0.0f < x_842);
    let x_844 : bool = u_xlatb48;
    if (x_844) {
      let x_848 : vec4<f32> = u_xlat6;
      let x_850 : vec4<f32> = u_xlat6;
      u_xlat48 = dot(vec3<f32>(x_848.x, x_848.y, x_848.z), vec3<f32>(x_850.x, x_850.y, x_850.z));
      let x_853 : f32 = u_xlat48;
      u_xlat48 = inverseSqrt(x_853);
      let x_855 : f32 = u_xlat48;
      let x_857 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_855, x_855, x_855) * vec3<f32>(x_857.x, x_857.y, x_857.z));
      let x_861 : vec4<f32> = u_xlat5;
      let x_866 : vec4<f32> = x_45.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(vec3<f32>(x_861.x, x_861.y, x_861.z)) + vec3<f32>(x_866.x, x_866.y, x_866.z));
      let x_869 : vec3<f32> = u_xlat12;
      let x_870 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_869 / x_870);
      let x_873 : vec4<f32> = u_xlat5;
      let x_878 : vec4<f32> = x_45.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(vec3<f32>(x_873.x, x_873.y, x_873.z)) + vec3<f32>(x_878.x, x_878.y, x_878.z));
      let x_881 : vec3<f32> = u_xlat13;
      let x_882 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_881 / x_882);
      let x_885 : vec3<f32> = u_xlat11;
      let x_887 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_885.x, x_885.y, x_885.z, x_885.x));
      u_xlatb14 = vec3<bool>(x_887.x, x_887.y, x_887.z);
      let x_890 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_890;
      let x_892 : bool = u_xlatb14.x;
      if (x_892) {
        let x_897 : f32 = u_xlat12.x;
        x_893 = x_897;
      } else {
        let x_900 : f32 = u_xlat13.x;
        x_893 = x_900;
      }
      let x_901 : f32 = x_893;
      hlslcc_movcTemp_1.x = x_901;
      let x_904 : bool = u_xlatb14.y;
      if (x_904) {
        let x_909 : f32 = u_xlat12.y;
        x_905 = x_909;
      } else {
        let x_912 : f32 = u_xlat13.y;
        x_905 = x_912;
      }
      let x_913 : f32 = x_905;
      hlslcc_movcTemp_1.y = x_913;
      let x_916 : bool = u_xlatb14.z;
      if (x_916) {
        let x_921 : f32 = u_xlat12.z;
        x_917 = x_921;
      } else {
        let x_924 : f32 = u_xlat13.z;
        x_917 = x_924;
      }
      let x_925 : f32 = x_917;
      hlslcc_movcTemp_1.z = x_925;
      let x_927 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_927;
      let x_929 : f32 = u_xlat12.y;
      let x_931 : f32 = u_xlat12.x;
      u_xlat48 = min(x_929, x_931);
      let x_934 : f32 = u_xlat12.z;
      let x_935 : f32 = u_xlat48;
      u_xlat48 = min(x_934, x_935);
      let x_937 : vec4<f32> = u_xlat5;
      let x_940 : vec4<f32> = x_45.unity_SpecCube1_ProbePosition;
      let x_943 : vec3<f32> = (vec3<f32>(x_937.x, x_937.y, x_937.z) + -(vec3<f32>(x_940.x, x_940.y, x_940.z)));
      let x_944 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
      let x_946 : vec3<f32> = u_xlat11;
      let x_947 : f32 = u_xlat48;
      let x_950 : vec4<f32> = u_xlat5;
      let x_952 : vec3<f32> = ((x_946 * vec3<f32>(x_947, x_947, x_947)) + vec3<f32>(x_950.x, x_950.y, x_950.z));
      let x_953 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
    }
    let x_959 : vec4<f32> = u_xlat6;
    let x_961 : f32 = u_xlat45;
    let x_962 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_959.x, x_959.y, x_959.z), x_961);
    u_xlat5 = x_962;
    let x_964 : f32 = u_xlat5.w;
    u_xlat45 = (x_964 + -1.0f);
    let x_968 : f32 = x_45.unity_SpecCube1_HDR.w;
    let x_969 : f32 = u_xlat45;
    u_xlat45 = ((x_968 * x_969) + 1.0f);
    let x_972 : f32 = u_xlat45;
    u_xlat45 = log2(x_972);
    let x_974 : f32 = u_xlat45;
    let x_976 : f32 = x_45.unity_SpecCube1_HDR.y;
    u_xlat45 = (x_974 * x_976);
    let x_978 : f32 = u_xlat45;
    u_xlat45 = exp2(x_978);
    let x_980 : f32 = u_xlat45;
    let x_982 : f32 = x_45.unity_SpecCube1_HDR.x;
    u_xlat45 = (x_980 * x_982);
    let x_984 : vec4<f32> = u_xlat5;
    let x_986 : f32 = u_xlat45;
    let x_988 : vec3<f32> = (vec3<f32>(x_984.x, x_984.y, x_984.z) * vec3<f32>(x_986, x_986, x_986));
    let x_989 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
    let x_991 : f32 = u_xlat46;
    let x_993 : vec4<f32> = u_xlat9;
    let x_996 : vec4<f32> = u_xlat5;
    let x_999 : vec3<f32> = ((vec3<f32>(x_991, x_991, x_991) * vec3<f32>(x_993.x, x_993.y, x_993.z)) + -(vec3<f32>(x_996.x, x_996.y, x_996.z)));
    let x_1000 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
    let x_1003 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    let x_1005 : vec4<f32> = u_xlat6;
    let x_1008 : vec4<f32> = u_xlat5;
    let x_1010 : vec3<f32> = ((vec3<f32>(x_1003.w, x_1003.w, x_1003.w) * vec3<f32>(x_1005.x, x_1005.y, x_1005.z)) + vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
    let x_1011 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  }
  let x_1013 : f32 = u_xlat47;
  let x_1015 : vec4<f32> = u_xlat10;
  let x_1017 : vec3<f32> = (vec3<f32>(x_1013, x_1013, x_1013) * vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = vs_TEXCOORD1;
  let x_1023 : vec2<f32> = u_xlat30;
  let x_1027 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_1029 : vec3<f32> = ((-(vec3<f32>(x_1020.x, x_1020.y, x_1020.z)) * vec3<f32>(x_1023.x, x_1023.x, x_1023.x)) + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1032 : vec4<f32> = u_xlat6;
  let x_1034 : vec4<f32> = u_xlat6;
  u_xlat30.x = dot(vec3<f32>(x_1032.x, x_1032.y, x_1032.z), vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1039 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1039, 0.001f);
  let x_1044 : f32 = u_xlat30.x;
  u_xlat30.x = inverseSqrt(x_1044);
  let x_1047 : vec2<f32> = u_xlat30;
  let x_1049 : vec4<f32> = u_xlat6;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1047.x, x_1047.x, x_1047.x) * vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1052 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat3;
  let x_1056 : vec3<f32> = u_xlat4;
  u_xlat30.x = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), -(x_1056));
  let x_1060 : vec4<f32> = u_xlat3;
  let x_1063 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  u_xlat45 = dot(vec3<f32>(x_1060.x, x_1060.y, x_1060.z), vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1066, 0.0f, 1.0f);
  let x_1068 : vec4<f32> = u_xlat3;
  let x_1070 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_1068.x, x_1068.y, x_1068.z), vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
  let x_1073 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1073, 0.0f, 1.0f);
  let x_1076 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_1078 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_1076.x, x_1076.y, x_1076.z), vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1083 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1083, 0.0f, 1.0f);
  let x_1088 : f32 = u_xlat3.x;
  let x_1090 : f32 = u_xlat3.x;
  u_xlat18 = (x_1088 * x_1090);
  let x_1092 : f32 = u_xlat18;
  let x_1094 : f32 = u_xlat49;
  u_xlat18 = dot(vec2<f32>(x_1092, x_1092), vec2<f32>(x_1094, x_1094));
  let x_1097 : f32 = u_xlat18;
  u_xlat18 = (x_1097 + -0.5f);
  let x_1101 : f32 = u_xlat45;
  u_xlat33 = (-(x_1101) + 1.0f);
  let x_1104 : f32 = u_xlat33;
  let x_1105 : f32 = u_xlat33;
  u_xlat48 = (x_1104 * x_1105);
  let x_1107 : f32 = u_xlat48;
  let x_1108 : f32 = u_xlat48;
  u_xlat48 = (x_1107 * x_1108);
  let x_1110 : f32 = u_xlat33;
  let x_1111 : f32 = u_xlat48;
  u_xlat33 = (x_1110 * x_1111);
  let x_1113 : f32 = u_xlat18;
  let x_1114 : f32 = u_xlat33;
  u_xlat33 = ((x_1113 * x_1114) + 1.0f);
  let x_1118 : f32 = u_xlat30.x;
  u_xlat48 = (-(abs(x_1118)) + 1.0f);
  let x_1122 : f32 = u_xlat48;
  let x_1123 : f32 = u_xlat48;
  u_xlat4.x = (x_1122 * x_1123);
  let x_1127 : f32 = u_xlat4.x;
  let x_1129 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1127 * x_1129);
  let x_1132 : f32 = u_xlat48;
  let x_1134 : f32 = u_xlat4.x;
  u_xlat48 = (x_1132 * x_1134);
  let x_1136 : f32 = u_xlat18;
  let x_1137 : f32 = u_xlat48;
  u_xlat18 = ((x_1136 * x_1137) + 1.0f);
  let x_1140 : f32 = u_xlat18;
  let x_1141 : f32 = u_xlat33;
  u_xlat18 = (x_1140 * x_1141);
  let x_1143 : f32 = u_xlat45;
  let x_1144 : f32 = u_xlat18;
  u_xlat18 = (x_1143 * x_1144);
  let x_1146 : f32 = u_xlat49;
  let x_1147 : f32 = u_xlat49;
  u_xlat33 = (x_1146 * x_1147);
  let x_1149 : f32 = u_xlat33;
  u_xlat33 = max(x_1149, 0.002f);
  let x_1152 : f32 = u_xlat33;
  u_xlat4.x = (-(x_1152) + 1.0f);
  let x_1158 : f32 = u_xlat30.x;
  let x_1161 : f32 = u_xlat4.x;
  let x_1163 : f32 = u_xlat33;
  u_xlat19 = ((abs(x_1158) * x_1161) + x_1163);
  let x_1165 : f32 = u_xlat45;
  let x_1167 : f32 = u_xlat4.x;
  let x_1169 : f32 = u_xlat33;
  u_xlat4.x = ((x_1165 * x_1167) + x_1169);
  let x_1173 : f32 = u_xlat30.x;
  let x_1176 : f32 = u_xlat4.x;
  u_xlat30.x = (abs(x_1173) * x_1176);
  let x_1179 : f32 = u_xlat45;
  let x_1180 : f32 = u_xlat19;
  let x_1183 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1179 * x_1180) + x_1183);
  let x_1187 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1187 + 0.00001f);
  let x_1192 : f32 = u_xlat30.x;
  u_xlat30.x = (0.5f / x_1192);
  let x_1195 : f32 = u_xlat33;
  let x_1196 : f32 = u_xlat33;
  u_xlat4.x = (x_1195 * x_1196);
  let x_1199 : f32 = u_xlat46;
  let x_1201 : f32 = u_xlat4.x;
  let x_1203 : f32 = u_xlat46;
  u_xlat19 = ((x_1199 * x_1201) + -(x_1203));
  let x_1206 : f32 = u_xlat19;
  let x_1207 : f32 = u_xlat46;
  u_xlat46 = ((x_1206 * x_1207) + 1.0f);
  let x_1211 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1211 * 0.318309873f);
  let x_1215 : f32 = u_xlat46;
  let x_1216 : f32 = u_xlat46;
  u_xlat46 = ((x_1215 * x_1216) + 0.0000001f);
  let x_1221 : f32 = u_xlat4.x;
  let x_1222 : f32 = u_xlat46;
  u_xlat46 = (x_1221 / x_1222);
  let x_1225 : f32 = u_xlat30.x;
  let x_1226 : f32 = u_xlat46;
  u_xlat30.x = (x_1225 * x_1226);
  let x_1229 : f32 = u_xlat45;
  let x_1231 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1229 * x_1231);
  let x_1235 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1235 * 3.141592741f);
  let x_1240 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1240, 0.0f);
  let x_1243 : f32 = u_xlat33;
  let x_1244 : f32 = u_xlat33;
  u_xlat45 = ((x_1243 * x_1244) + 1.0f);
  let x_1247 : f32 = u_xlat45;
  u_xlat45 = (1.0f / x_1247);
  let x_1249 : vec3<f32> = u_xlat1;
  let x_1250 : vec3<f32> = u_xlat1;
  u_xlat46 = dot(x_1249, x_1250);
  let x_1252 : f32 = u_xlat46;
  u_xlatb46 = !((x_1252 == 0.0f));
  let x_1254 : bool = u_xlatb46;
  u_xlat46 = select(0.0f, 1.0f, x_1254);
  let x_1257 : f32 = u_xlat30.x;
  let x_1258 : f32 = u_xlat46;
  u_xlat30.x = (x_1257 * x_1258);
  let x_1262 : f32 = u_xlat0.y;
  let x_1264 : f32 = x_45.x_GlossMapScale;
  let x_1267 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1262 * x_1264) + -(x_1267));
  let x_1272 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1272 + 1.0f);
  let x_1276 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1276, 0.0f, 1.0f);
  let x_1279 : f32 = u_xlat18;
  let x_1281 : vec3<f32> = u_xlat7;
  u_xlat4 = (vec3<f32>(x_1279, x_1279, x_1279) * x_1281);
  let x_1283 : vec4<f32> = u_xlat8;
  let x_1285 : f32 = u_xlat47;
  let x_1288 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_1283.x, x_1283.y, x_1283.z) * vec3<f32>(x_1285, x_1285, x_1285)) + x_1288);
  let x_1290 : vec3<f32> = u_xlat7;
  let x_1291 : vec2<f32> = u_xlat30;
  let x_1293 : vec3<f32> = (x_1290 * vec3<f32>(x_1291.x, x_1291.x, x_1291.x));
  let x_1294 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
  let x_1298 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_1298) + 1.0f);
  let x_1303 : f32 = u_xlat15.x;
  let x_1305 : f32 = u_xlat15.x;
  u_xlat30.x = (x_1303 * x_1305);
  let x_1309 : f32 = u_xlat30.x;
  let x_1311 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1309 * x_1311);
  let x_1315 : f32 = u_xlat15.x;
  let x_1317 : f32 = u_xlat30.x;
  u_xlat15.x = (x_1315 * x_1317);
  let x_1320 : vec3<f32> = u_xlat1;
  let x_1323 : vec3<f32> = (-(x_1320) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1324 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1324.w);
  let x_1326 : vec4<f32> = u_xlat3;
  let x_1328 : vec3<f32> = u_xlat15;
  let x_1331 : vec3<f32> = u_xlat1;
  let x_1332 : vec3<f32> = ((vec3<f32>(x_1326.x, x_1326.y, x_1326.z) * vec3<f32>(x_1328.x, x_1328.x, x_1328.x)) + x_1331);
  let x_1333 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
  let x_1335 : vec4<f32> = u_xlat3;
  let x_1337 : vec4<f32> = u_xlat6;
  let x_1339 : vec3<f32> = (vec3<f32>(x_1335.x, x_1335.y, x_1335.z) * vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
  let x_1340 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
  let x_1342 : vec3<f32> = u_xlat2;
  let x_1343 : vec3<f32> = u_xlat4;
  let x_1345 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_1342 * x_1343) + vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
  let x_1348 : vec4<f32> = u_xlat5;
  let x_1350 : f32 = u_xlat45;
  u_xlat15 = (vec3<f32>(x_1348.x, x_1348.y, x_1348.z) * vec3<f32>(x_1350, x_1350, x_1350));
  let x_1353 : vec3<f32> = u_xlat1;
  let x_1355 : vec3<f32> = u_xlat0;
  let x_1357 : vec3<f32> = (-(x_1353) + vec3<f32>(x_1355.x, x_1355.x, x_1355.x));
  let x_1358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
  let x_1360 : f32 = u_xlat48;
  let x_1362 : vec4<f32> = u_xlat3;
  let x_1365 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1360, x_1360, x_1360) * vec3<f32>(x_1362.x, x_1362.y, x_1362.z)) + x_1365);
  let x_1367 : vec3<f32> = u_xlat15;
  let x_1368 : vec3<f32> = u_xlat1;
  let x_1370 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_1367 * x_1368) + x_1370);
  let x_1377 : vec4<f32> = vs_TEXCOORD0;
  let x_1379 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_1377.x, x_1377.y));
  u_xlat1 = vec3<f32>(x_1379.x, x_1379.y, x_1379.z);
  let x_1383 : vec3<f32> = u_xlat1;
  let x_1386 : vec4<f32> = x_45.x_EmissionColor;
  let x_1389 : vec3<f32> = u_xlat0;
  let x_1390 : vec3<f32> = ((x_1383 * vec3<f32>(x_1386.x, x_1386.y, x_1386.z)) + x_1389);
  let x_1391 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
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

