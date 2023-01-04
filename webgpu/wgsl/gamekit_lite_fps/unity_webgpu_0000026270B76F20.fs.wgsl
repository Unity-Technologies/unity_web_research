struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  x_OcclusionStrength : f32,
  @size(4)
  padding_2 : u32,
  x_EmissionColor : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb45 : bool;

var<private> u_xlatb46 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(8) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(10) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_OcclusionMap : sampler;

var<private> u_xlat49 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb12 : vec3<bool>;

@group(0) @binding(6) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb48 : bool;

var<private> u_xlat48 : f32;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb14 : vec3<bool>;

@group(0) @binding(7) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlat15 : vec3<f32>;

@group(0) @binding(5) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_268 : vec3<f32>;
  var x_450 : vec3<f32>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_641 : f32;
  var x_653 : f32;
  var x_665 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_829 : f32;
  var x_841 : f32;
  var x_853 : f32;
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
  let x_200 : f32 = x_45.unity_ProbeVolumeParams.x;
  u_xlatb45 = (x_200 == 1.0f);
  let x_202 : bool = u_xlatb45;
  if (x_202) {
    let x_208 : f32 = x_45.unity_ProbeVolumeParams.y;
    u_xlatb46 = (x_208 == 1.0f);
    let x_211 : vec4<f32> = vs_TEXCOORD3;
    let x_216 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[1i];
    let x_218 : vec3<f32> = (vec3<f32>(x_211.w, x_211.w, x_211.w) * vec3<f32>(x_216.x, x_216.y, x_216.z));
    let x_219 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_223 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[0i];
    let x_225 : vec4<f32> = vs_TEXCOORD2;
    let x_228 : vec4<f32> = u_xlat5;
    let x_230 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.w, x_225.w, x_225.w)) + vec3<f32>(x_228.x, x_228.y, x_228.z));
    let x_231 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
    let x_235 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[2i];
    let x_237 : vec4<f32> = vs_TEXCOORD4;
    let x_240 : vec4<f32> = u_xlat5;
    let x_242 : vec3<f32> = ((vec3<f32>(x_235.x, x_235.y, x_235.z) * vec3<f32>(x_237.w, x_237.w, x_237.w)) + vec3<f32>(x_240.x, x_240.y, x_240.z));
    let x_243 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
    let x_245 : vec4<f32> = u_xlat5;
    let x_249 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[3i];
    let x_251 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) + vec3<f32>(x_249.x, x_249.y, x_249.z));
    let x_252 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
    let x_258 : f32 = vs_TEXCOORD2.w;
    u_xlat21.x = x_258;
    let x_261 : f32 = vs_TEXCOORD3.w;
    u_xlat21.y = x_261;
    let x_264 : f32 = vs_TEXCOORD4.w;
    u_xlat21.z = x_264;
    let x_266 : bool = u_xlatb46;
    if (x_266) {
      let x_271 : vec4<f32> = u_xlat5;
      x_268 = vec3<f32>(x_271.x, x_271.y, x_271.z);
    } else {
      let x_274 : vec3<f32> = u_xlat21;
      x_268 = x_274;
    }
    let x_275 : vec3<f32> = x_268;
    let x_276 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
    let x_278 : vec4<f32> = u_xlat5;
    let x_283 : vec3<f32> = x_45.unity_ProbeVolumeMin;
    let x_285 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) + -(x_283));
    let x_286 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_288 : vec4<f32> = u_xlat5;
    let x_292 : vec3<f32> = x_45.unity_ProbeVolumeSizeInv;
    let x_293 : vec3<f32> = (vec3<f32>(x_288.x, x_288.y, x_288.z) * x_292);
    let x_294 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_294.x, x_293.x, x_293.y, x_293.z);
    let x_297 : f32 = u_xlat5.y;
    u_xlat46 = ((x_297 * 0.25f) + 0.75f);
    let x_304 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat47 = ((x_304 * 0.5f) + 0.75f);
    let x_308 : f32 = u_xlat46;
    let x_309 : f32 = u_xlat47;
    u_xlat5.x = max(x_308, x_309);
    let x_320 : vec4<f32> = u_xlat5;
    let x_322 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_320.x, x_320.z, x_320.w));
    u_xlat5 = x_322;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_328 : vec4<f32> = u_xlat5;
  let x_331 : vec4<f32> = x_45.unity_OcclusionMaskSelector;
  u_xlat46 = dot(x_328, x_331);
  let x_333 : f32 = u_xlat46;
  u_xlat46 = clamp(x_333, 0.0f, 1.0f);
  let x_341 : vec4<f32> = vs_TEXCOORD0;
  let x_343 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_341.x, x_341.y));
  u_xlat47 = x_343.y;
  let x_348 : f32 = x_45.x_OcclusionStrength;
  u_xlat49 = (-(x_348) + 1.0f);
  let x_351 : f32 = u_xlat47;
  let x_353 : f32 = x_45.x_OcclusionStrength;
  let x_355 : f32 = u_xlat49;
  u_xlat47 = ((x_351 * x_353) + x_355);
  let x_358 : f32 = u_xlat0.y;
  let x_362 : f32 = x_45.x_GlossMapScale;
  u_xlat49 = ((-(x_358) * x_362) + 1.0f);
  let x_365 : vec3<f32> = u_xlat4;
  let x_366 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_365, vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_371 : f32 = u_xlat5.x;
  let x_373 : f32 = u_xlat5.x;
  u_xlat5.x = (x_371 + x_373);
  let x_376 : vec4<f32> = u_xlat3;
  let x_378 : vec4<f32> = u_xlat5;
  let x_382 : vec3<f32> = u_xlat4;
  let x_383 : vec3<f32> = ((vec3<f32>(x_376.x, x_376.y, x_376.z) * -(vec3<f32>(x_378.x, x_378.x, x_378.x))) + x_382);
  let x_384 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_387 : f32 = u_xlat46;
  let x_391 : vec4<f32> = x_45.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_387, x_387, x_387) * vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : bool = u_xlatb45;
  if (x_394) {
    let x_398 : f32 = x_45.unity_ProbeVolumeParams.y;
    u_xlatb45 = (x_398 == 1.0f);
    let x_401 : vec4<f32> = vs_TEXCOORD3;
    let x_404 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[1i];
    let x_406 : vec3<f32> = (vec3<f32>(x_401.w, x_401.w, x_401.w) * vec3<f32>(x_404.x, x_404.y, x_404.z));
    let x_407 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
    let x_410 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[0i];
    let x_412 : vec4<f32> = vs_TEXCOORD2;
    let x_415 : vec4<f32> = u_xlat7;
    let x_417 : vec3<f32> = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412.w, x_412.w, x_412.w)) + vec3<f32>(x_415.x, x_415.y, x_415.z));
    let x_418 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
    let x_421 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[2i];
    let x_423 : vec4<f32> = vs_TEXCOORD4;
    let x_426 : vec4<f32> = u_xlat7;
    let x_428 : vec3<f32> = ((vec3<f32>(x_421.x, x_421.y, x_421.z) * vec3<f32>(x_423.w, x_423.w, x_423.w)) + vec3<f32>(x_426.x, x_426.y, x_426.z));
    let x_429 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
    let x_431 : vec4<f32> = u_xlat7;
    let x_434 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[3i];
    let x_436 : vec3<f32> = (vec3<f32>(x_431.x, x_431.y, x_431.z) + vec3<f32>(x_434.x, x_434.y, x_434.z));
    let x_437 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
    let x_441 : f32 = vs_TEXCOORD2.w;
    u_xlat23.x = x_441;
    let x_444 : f32 = vs_TEXCOORD3.w;
    u_xlat23.y = x_444;
    let x_447 : f32 = vs_TEXCOORD4.w;
    u_xlat23.z = x_447;
    let x_449 : bool = u_xlatb45;
    if (x_449) {
      let x_453 : vec4<f32> = u_xlat7;
      x_450 = vec3<f32>(x_453.x, x_453.y, x_453.z);
    } else {
      let x_456 : vec3<f32> = u_xlat23;
      x_450 = x_456;
    }
    let x_457 : vec3<f32> = x_450;
    let x_458 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
    let x_460 : vec4<f32> = u_xlat7;
    let x_463 : vec3<f32> = x_45.unity_ProbeVolumeMin;
    let x_465 : vec3<f32> = (vec3<f32>(x_460.x, x_460.y, x_460.z) + -(x_463));
    let x_466 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
    let x_468 : vec4<f32> = u_xlat7;
    let x_471 : vec3<f32> = x_45.unity_ProbeVolumeSizeInv;
    let x_472 : vec3<f32> = (vec3<f32>(x_468.x, x_468.y, x_468.z) * x_471);
    let x_473 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_473.x, x_472.x, x_472.y, x_472.z);
    let x_477 : f32 = u_xlat7.y;
    u_xlat45 = (x_477 * 0.25f);
    let x_480 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat46 = (x_480 * 0.5f);
    let x_484 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat50 = ((-(x_484) * 0.5f) + 0.25f);
    let x_488 : f32 = u_xlat45;
    let x_489 : f32 = u_xlat46;
    u_xlat45 = max(x_488, x_489);
    let x_491 : f32 = u_xlat50;
    let x_492 : f32 = u_xlat45;
    u_xlat7.x = min(x_491, x_492);
    let x_499 : vec4<f32> = u_xlat7;
    let x_501 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_499.x, x_499.z, x_499.w));
    u_xlat8 = x_501;
    let x_503 : vec4<f32> = u_xlat7;
    let x_506 : vec3<f32> = (vec3<f32>(x_503.x, x_503.z, x_503.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_507 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
    let x_512 : vec4<f32> = u_xlat9;
    let x_514 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_512.x, x_512.y, x_512.z));
    u_xlat9 = x_514;
    let x_515 : vec4<f32> = u_xlat7;
    let x_518 : vec3<f32> = (vec3<f32>(x_515.x, x_515.z, x_515.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_519 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
    let x_524 : vec4<f32> = u_xlat7;
    let x_526 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_524.x, x_524.y, x_524.z));
    u_xlat7 = x_526;
    u_xlat3.w = 1.0f;
    let x_528 : vec4<f32> = u_xlat8;
    let x_529 : vec4<f32> = u_xlat3;
    u_xlat8.x = dot(x_528, x_529);
    let x_532 : vec4<f32> = u_xlat9;
    let x_533 : vec4<f32> = u_xlat3;
    u_xlat8.y = dot(x_532, x_533);
    let x_536 : vec4<f32> = u_xlat7;
    let x_537 : vec4<f32> = u_xlat3;
    u_xlat8.z = dot(x_536, x_537);
  } else {
    u_xlat3.w = 1.0f;
    let x_543 : vec4<f32> = x_45.unity_SHAr;
    let x_544 : vec4<f32> = u_xlat3;
    u_xlat8.x = dot(x_543, x_544);
    let x_548 : vec4<f32> = x_45.unity_SHAg;
    let x_549 : vec4<f32> = u_xlat3;
    u_xlat8.y = dot(x_548, x_549);
    let x_553 : vec4<f32> = x_45.unity_SHAb;
    let x_554 : vec4<f32> = u_xlat3;
    u_xlat8.z = dot(x_553, x_554);
  }
  let x_557 : vec4<f32> = u_xlat8;
  let x_560 : vec4<f32> = vs_TEXCOORD5;
  let x_562 : vec3<f32> = (vec3<f32>(x_557.x, x_557.y, x_557.z) + vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_565 : vec4<f32> = u_xlat7;
  let x_568 : vec3<f32> = max(vec3<f32>(x_565.x, x_565.y, x_565.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_569 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_573 : f32 = x_45.unity_SpecCube0_ProbePosition.w;
  u_xlatb45 = (0.0f < x_573);
  let x_575 : bool = u_xlatb45;
  if (x_575) {
    let x_578 : vec4<f32> = u_xlat5;
    let x_580 : vec4<f32> = u_xlat5;
    u_xlat45 = dot(vec3<f32>(x_578.x, x_578.y, x_578.z), vec3<f32>(x_580.x, x_580.y, x_580.z));
    let x_583 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_583);
    let x_585 : f32 = u_xlat45;
    let x_587 : vec4<f32> = u_xlat5;
    let x_589 : vec3<f32> = (vec3<f32>(x_585, x_585, x_585) * vec3<f32>(x_587.x, x_587.y, x_587.z));
    let x_590 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
    let x_593 : f32 = vs_TEXCOORD2.w;
    u_xlat9.x = x_593;
    let x_596 : f32 = vs_TEXCOORD3.w;
    u_xlat9.y = x_596;
    let x_599 : f32 = vs_TEXCOORD4.w;
    u_xlat9.z = x_599;
    let x_602 : vec4<f32> = u_xlat9;
    let x_607 : vec4<f32> = x_45.unity_SpecCube0_BoxMax;
    u_xlat10 = (-(vec3<f32>(x_602.x, x_602.y, x_602.z)) + vec3<f32>(x_607.x, x_607.y, x_607.z));
    let x_610 : vec3<f32> = u_xlat10;
    let x_611 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_610 / vec3<f32>(x_611.x, x_611.y, x_611.z));
    let x_615 : vec4<f32> = u_xlat9;
    let x_620 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_615.x, x_615.y, x_615.z)) + vec3<f32>(x_620.x, x_620.y, x_620.z));
    let x_623 : vec3<f32> = u_xlat11;
    let x_624 : vec4<f32> = u_xlat8;
    u_xlat11 = (x_623 / vec3<f32>(x_624.x, x_624.y, x_624.z));
    let x_631 : vec4<f32> = u_xlat8;
    let x_634 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.x));
    u_xlatb12 = vec3<bool>(x_634.x, x_634.y, x_634.z);
    let x_637 : vec3<f32> = u_xlat10;
    hlslcc_movcTemp = x_637;
    let x_639 : bool = u_xlatb12.x;
    if (x_639) {
      let x_645 : f32 = u_xlat10.x;
      x_641 = x_645;
    } else {
      let x_648 : f32 = u_xlat11.x;
      x_641 = x_648;
    }
    let x_649 : f32 = x_641;
    hlslcc_movcTemp.x = x_649;
    let x_652 : bool = u_xlatb12.y;
    if (x_652) {
      let x_657 : f32 = u_xlat10.y;
      x_653 = x_657;
    } else {
      let x_660 : f32 = u_xlat11.y;
      x_653 = x_660;
    }
    let x_661 : f32 = x_653;
    hlslcc_movcTemp.y = x_661;
    let x_664 : bool = u_xlatb12.z;
    if (x_664) {
      let x_669 : f32 = u_xlat10.z;
      x_665 = x_669;
    } else {
      let x_672 : f32 = u_xlat11.z;
      x_665 = x_672;
    }
    let x_673 : f32 = x_665;
    hlslcc_movcTemp.z = x_673;
    let x_675 : vec3<f32> = hlslcc_movcTemp;
    u_xlat10 = x_675;
    let x_677 : f32 = u_xlat10.y;
    let x_679 : f32 = u_xlat10.x;
    u_xlat45 = min(x_677, x_679);
    let x_682 : f32 = u_xlat10.z;
    let x_683 : f32 = u_xlat45;
    u_xlat45 = min(x_682, x_683);
    let x_685 : vec4<f32> = u_xlat9;
    let x_688 : vec4<f32> = x_45.unity_SpecCube0_ProbePosition;
    let x_691 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) + -(vec3<f32>(x_688.x, x_688.y, x_688.z)));
    let x_692 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
    let x_694 : vec4<f32> = u_xlat8;
    let x_696 : f32 = u_xlat45;
    let x_699 : vec4<f32> = u_xlat9;
    let x_701 : vec3<f32> = ((vec3<f32>(x_694.x, x_694.y, x_694.z) * vec3<f32>(x_696, x_696, x_696)) + vec3<f32>(x_699.x, x_699.y, x_699.z));
    let x_702 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  } else {
    let x_705 : vec4<f32> = u_xlat5;
    let x_706 : vec3<f32> = vec3<f32>(x_705.x, x_705.y, x_705.z);
    let x_707 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  }
  let x_709 : f32 = u_xlat49;
  u_xlat45 = ((-(x_709) * 0.699999988f) + 1.700000048f);
  let x_715 : f32 = u_xlat45;
  let x_716 : f32 = u_xlat49;
  u_xlat45 = (x_715 * x_716);
  let x_718 : f32 = u_xlat45;
  u_xlat45 = (x_718 * 6.0f);
  let x_729 : vec4<f32> = u_xlat8;
  let x_731 : f32 = u_xlat45;
  let x_732 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_729.x, x_729.y, x_729.z), x_731);
  u_xlat8 = x_732;
  let x_734 : f32 = u_xlat8.w;
  u_xlat46 = (x_734 + -1.0f);
  let x_738 : f32 = x_45.unity_SpecCube0_HDR.w;
  let x_739 : f32 = u_xlat46;
  u_xlat46 = ((x_738 * x_739) + 1.0f);
  let x_742 : f32 = u_xlat46;
  u_xlat46 = log2(x_742);
  let x_744 : f32 = u_xlat46;
  let x_746 : f32 = x_45.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_744 * x_746);
  let x_748 : f32 = u_xlat46;
  u_xlat46 = exp2(x_748);
  let x_750 : f32 = u_xlat46;
  let x_752 : f32 = x_45.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_750 * x_752);
  let x_754 : vec4<f32> = u_xlat8;
  let x_756 : f32 = u_xlat46;
  let x_758 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) * vec3<f32>(x_756, x_756, x_756));
  let x_759 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_763 : f32 = x_45.unity_SpecCube0_BoxMin.w;
  u_xlatb48 = (x_763 < 0.999989986f);
  let x_766 : bool = u_xlatb48;
  if (x_766) {
    let x_771 : f32 = x_45.unity_SpecCube1_ProbePosition.w;
    u_xlatb48 = (0.0f < x_771);
    let x_773 : bool = u_xlatb48;
    if (x_773) {
      let x_777 : vec4<f32> = u_xlat5;
      let x_779 : vec4<f32> = u_xlat5;
      u_xlat48 = dot(vec3<f32>(x_777.x, x_777.y, x_777.z), vec3<f32>(x_779.x, x_779.y, x_779.z));
      let x_782 : f32 = u_xlat48;
      u_xlat48 = inverseSqrt(x_782);
      let x_784 : f32 = u_xlat48;
      let x_786 : vec4<f32> = u_xlat5;
      u_xlat10 = (vec3<f32>(x_784, x_784, x_784) * vec3<f32>(x_786.x, x_786.y, x_786.z));
      let x_790 : f32 = vs_TEXCOORD2.w;
      u_xlat11.x = x_790;
      let x_793 : f32 = vs_TEXCOORD3.w;
      u_xlat11.y = x_793;
      let x_796 : f32 = vs_TEXCOORD4.w;
      u_xlat11.z = x_796;
      let x_799 : vec3<f32> = u_xlat11;
      let x_803 : vec4<f32> = x_45.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_799) + vec3<f32>(x_803.x, x_803.y, x_803.z));
      let x_806 : vec3<f32> = u_xlat12;
      let x_807 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_806 / x_807);
      let x_810 : vec3<f32> = u_xlat11;
      let x_814 : vec4<f32> = x_45.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_810) + vec3<f32>(x_814.x, x_814.y, x_814.z));
      let x_817 : vec3<f32> = u_xlat13;
      let x_818 : vec3<f32> = u_xlat10;
      u_xlat13 = (x_817 / x_818);
      let x_821 : vec3<f32> = u_xlat10;
      let x_823 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_821.x, x_821.y, x_821.z, x_821.x));
      u_xlatb14 = vec3<bool>(x_823.x, x_823.y, x_823.z);
      let x_826 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_826;
      let x_828 : bool = u_xlatb14.x;
      if (x_828) {
        let x_833 : f32 = u_xlat12.x;
        x_829 = x_833;
      } else {
        let x_836 : f32 = u_xlat13.x;
        x_829 = x_836;
      }
      let x_837 : f32 = x_829;
      hlslcc_movcTemp_1.x = x_837;
      let x_840 : bool = u_xlatb14.y;
      if (x_840) {
        let x_845 : f32 = u_xlat12.y;
        x_841 = x_845;
      } else {
        let x_848 : f32 = u_xlat13.y;
        x_841 = x_848;
      }
      let x_849 : f32 = x_841;
      hlslcc_movcTemp_1.y = x_849;
      let x_852 : bool = u_xlatb14.z;
      if (x_852) {
        let x_857 : f32 = u_xlat12.z;
        x_853 = x_857;
      } else {
        let x_860 : f32 = u_xlat13.z;
        x_853 = x_860;
      }
      let x_861 : f32 = x_853;
      hlslcc_movcTemp_1.z = x_861;
      let x_863 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_863;
      let x_865 : f32 = u_xlat12.y;
      let x_867 : f32 = u_xlat12.x;
      u_xlat48 = min(x_865, x_867);
      let x_870 : f32 = u_xlat12.z;
      let x_871 : f32 = u_xlat48;
      u_xlat48 = min(x_870, x_871);
      let x_873 : vec3<f32> = u_xlat11;
      let x_875 : vec4<f32> = x_45.unity_SpecCube1_ProbePosition;
      u_xlat11 = (x_873 + -(vec3<f32>(x_875.x, x_875.y, x_875.z)));
      let x_879 : vec3<f32> = u_xlat10;
      let x_880 : f32 = u_xlat48;
      let x_883 : vec3<f32> = u_xlat11;
      let x_884 : vec3<f32> = ((x_879 * vec3<f32>(x_880, x_880, x_880)) + x_883);
      let x_885 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
    }
    let x_891 : vec4<f32> = u_xlat5;
    let x_893 : f32 = u_xlat45;
    let x_894 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_891.x, x_891.y, x_891.z), x_893);
    u_xlat5 = x_894;
    let x_896 : f32 = u_xlat5.w;
    u_xlat45 = (x_896 + -1.0f);
    let x_900 : f32 = x_45.unity_SpecCube1_HDR.w;
    let x_901 : f32 = u_xlat45;
    u_xlat45 = ((x_900 * x_901) + 1.0f);
    let x_904 : f32 = u_xlat45;
    u_xlat45 = log2(x_904);
    let x_906 : f32 = u_xlat45;
    let x_908 : f32 = x_45.unity_SpecCube1_HDR.y;
    u_xlat45 = (x_906 * x_908);
    let x_910 : f32 = u_xlat45;
    u_xlat45 = exp2(x_910);
    let x_912 : f32 = u_xlat45;
    let x_914 : f32 = x_45.unity_SpecCube1_HDR.x;
    u_xlat45 = (x_912 * x_914);
    let x_916 : vec4<f32> = u_xlat5;
    let x_918 : f32 = u_xlat45;
    let x_920 : vec3<f32> = (vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(x_918, x_918, x_918));
    let x_921 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
    let x_923 : f32 = u_xlat46;
    let x_925 : vec4<f32> = u_xlat8;
    let x_928 : vec4<f32> = u_xlat5;
    let x_931 : vec3<f32> = ((vec3<f32>(x_923, x_923, x_923) * vec3<f32>(x_925.x, x_925.y, x_925.z)) + -(vec3<f32>(x_928.x, x_928.y, x_928.z)));
    let x_932 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
    let x_935 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    let x_937 : vec4<f32> = u_xlat8;
    let x_940 : vec4<f32> = u_xlat5;
    let x_942 : vec3<f32> = ((vec3<f32>(x_935.w, x_935.w, x_935.w) * vec3<f32>(x_937.x, x_937.y, x_937.z)) + vec3<f32>(x_940.x, x_940.y, x_940.z));
    let x_943 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
  }
  let x_945 : f32 = u_xlat47;
  let x_947 : vec4<f32> = u_xlat9;
  let x_949 : vec3<f32> = (vec3<f32>(x_945, x_945, x_945) * vec3<f32>(x_947.x, x_947.y, x_947.z));
  let x_950 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec4<f32> = vs_TEXCOORD1;
  let x_955 : vec2<f32> = u_xlat30;
  let x_959 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_961 : vec3<f32> = ((-(vec3<f32>(x_952.x, x_952.y, x_952.z)) * vec3<f32>(x_955.x, x_955.x, x_955.x)) + vec3<f32>(x_959.x, x_959.y, x_959.z));
  let x_962 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
  let x_964 : vec4<f32> = u_xlat8;
  let x_966 : vec4<f32> = u_xlat8;
  u_xlat30.x = dot(vec3<f32>(x_964.x, x_964.y, x_964.z), vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_971 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_971, 0.001f);
  let x_976 : f32 = u_xlat30.x;
  u_xlat30.x = inverseSqrt(x_976);
  let x_979 : vec2<f32> = u_xlat30;
  let x_981 : vec4<f32> = u_xlat8;
  let x_983 : vec3<f32> = (vec3<f32>(x_979.x, x_979.x, x_979.x) * vec3<f32>(x_981.x, x_981.y, x_981.z));
  let x_984 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_986 : vec4<f32> = u_xlat3;
  let x_988 : vec3<f32> = u_xlat4;
  u_xlat30.x = dot(vec3<f32>(x_986.x, x_986.y, x_986.z), -(x_988));
  let x_992 : vec4<f32> = u_xlat3;
  let x_995 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  u_xlat45 = dot(vec3<f32>(x_992.x, x_992.y, x_992.z), vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : f32 = u_xlat45;
  u_xlat45 = clamp(x_998, 0.0f, 1.0f);
  let x_1000 : vec4<f32> = u_xlat3;
  let x_1002 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_1000.x, x_1000.y, x_1000.z), vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1005 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1005, 0.0f, 1.0f);
  let x_1008 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_1010 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_1008.x, x_1008.y, x_1008.z), vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
  let x_1015 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1015, 0.0f, 1.0f);
  let x_1020 : f32 = u_xlat3.x;
  let x_1022 : f32 = u_xlat3.x;
  u_xlat18 = (x_1020 * x_1022);
  let x_1024 : f32 = u_xlat18;
  let x_1026 : f32 = u_xlat49;
  u_xlat18 = dot(vec2<f32>(x_1024, x_1024), vec2<f32>(x_1026, x_1026));
  let x_1029 : f32 = u_xlat18;
  u_xlat18 = (x_1029 + -0.5f);
  let x_1033 : f32 = u_xlat45;
  u_xlat33 = (-(x_1033) + 1.0f);
  let x_1036 : f32 = u_xlat33;
  let x_1037 : f32 = u_xlat33;
  u_xlat48 = (x_1036 * x_1037);
  let x_1039 : f32 = u_xlat48;
  let x_1040 : f32 = u_xlat48;
  u_xlat48 = (x_1039 * x_1040);
  let x_1042 : f32 = u_xlat33;
  let x_1043 : f32 = u_xlat48;
  u_xlat33 = (x_1042 * x_1043);
  let x_1045 : f32 = u_xlat18;
  let x_1046 : f32 = u_xlat33;
  u_xlat33 = ((x_1045 * x_1046) + 1.0f);
  let x_1050 : f32 = u_xlat30.x;
  u_xlat48 = (-(abs(x_1050)) + 1.0f);
  let x_1054 : f32 = u_xlat48;
  let x_1055 : f32 = u_xlat48;
  u_xlat4.x = (x_1054 * x_1055);
  let x_1059 : f32 = u_xlat4.x;
  let x_1061 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1059 * x_1061);
  let x_1064 : f32 = u_xlat48;
  let x_1066 : f32 = u_xlat4.x;
  u_xlat48 = (x_1064 * x_1066);
  let x_1068 : f32 = u_xlat18;
  let x_1069 : f32 = u_xlat48;
  u_xlat18 = ((x_1068 * x_1069) + 1.0f);
  let x_1072 : f32 = u_xlat18;
  let x_1073 : f32 = u_xlat33;
  u_xlat18 = (x_1072 * x_1073);
  let x_1075 : f32 = u_xlat45;
  let x_1076 : f32 = u_xlat18;
  u_xlat18 = (x_1075 * x_1076);
  let x_1078 : f32 = u_xlat49;
  let x_1079 : f32 = u_xlat49;
  u_xlat33 = (x_1078 * x_1079);
  let x_1081 : f32 = u_xlat33;
  u_xlat33 = max(x_1081, 0.002f);
  let x_1084 : f32 = u_xlat33;
  u_xlat4.x = (-(x_1084) + 1.0f);
  let x_1090 : f32 = u_xlat30.x;
  let x_1093 : f32 = u_xlat4.x;
  let x_1095 : f32 = u_xlat33;
  u_xlat19 = ((abs(x_1090) * x_1093) + x_1095);
  let x_1097 : f32 = u_xlat45;
  let x_1099 : f32 = u_xlat4.x;
  let x_1101 : f32 = u_xlat33;
  u_xlat4.x = ((x_1097 * x_1099) + x_1101);
  let x_1105 : f32 = u_xlat30.x;
  let x_1108 : f32 = u_xlat4.x;
  u_xlat30.x = (abs(x_1105) * x_1108);
  let x_1111 : f32 = u_xlat45;
  let x_1112 : f32 = u_xlat19;
  let x_1115 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1111 * x_1112) + x_1115);
  let x_1119 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1119 + 0.00001f);
  let x_1124 : f32 = u_xlat30.x;
  u_xlat30.x = (0.5f / x_1124);
  let x_1127 : f32 = u_xlat33;
  let x_1128 : f32 = u_xlat33;
  u_xlat4.x = (x_1127 * x_1128);
  let x_1131 : f32 = u_xlat46;
  let x_1133 : f32 = u_xlat4.x;
  let x_1135 : f32 = u_xlat46;
  u_xlat19 = ((x_1131 * x_1133) + -(x_1135));
  let x_1138 : f32 = u_xlat19;
  let x_1139 : f32 = u_xlat46;
  u_xlat46 = ((x_1138 * x_1139) + 1.0f);
  let x_1143 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1143 * 0.318309873f);
  let x_1147 : f32 = u_xlat46;
  let x_1148 : f32 = u_xlat46;
  u_xlat46 = ((x_1147 * x_1148) + 0.0000001f);
  let x_1153 : f32 = u_xlat4.x;
  let x_1154 : f32 = u_xlat46;
  u_xlat46 = (x_1153 / x_1154);
  let x_1157 : f32 = u_xlat30.x;
  let x_1158 : f32 = u_xlat46;
  u_xlat30.x = (x_1157 * x_1158);
  let x_1161 : f32 = u_xlat45;
  let x_1163 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1161 * x_1163);
  let x_1167 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1167 * 3.141592741f);
  let x_1172 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1172, 0.0f);
  let x_1175 : f32 = u_xlat33;
  let x_1176 : f32 = u_xlat33;
  u_xlat45 = ((x_1175 * x_1176) + 1.0f);
  let x_1179 : f32 = u_xlat45;
  u_xlat45 = (1.0f / x_1179);
  let x_1181 : vec3<f32> = u_xlat1;
  let x_1182 : vec3<f32> = u_xlat1;
  u_xlat46 = dot(x_1181, x_1182);
  let x_1184 : f32 = u_xlat46;
  u_xlatb46 = !((x_1184 == 0.0f));
  let x_1186 : bool = u_xlatb46;
  u_xlat46 = select(0.0f, 1.0f, x_1186);
  let x_1189 : f32 = u_xlat30.x;
  let x_1190 : f32 = u_xlat46;
  u_xlat30.x = (x_1189 * x_1190);
  let x_1194 : f32 = u_xlat0.y;
  let x_1196 : f32 = x_45.x_GlossMapScale;
  let x_1199 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1194 * x_1196) + -(x_1199));
  let x_1204 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1204 + 1.0f);
  let x_1208 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1208, 0.0f, 1.0f);
  let x_1211 : f32 = u_xlat18;
  let x_1213 : vec3<f32> = u_xlat6;
  u_xlat4 = (vec3<f32>(x_1211, x_1211, x_1211) * x_1213);
  let x_1215 : vec4<f32> = u_xlat7;
  let x_1217 : f32 = u_xlat47;
  let x_1220 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_1215.x, x_1215.y, x_1215.z) * vec3<f32>(x_1217, x_1217, x_1217)) + x_1220);
  let x_1222 : vec3<f32> = u_xlat6;
  let x_1223 : vec2<f32> = u_xlat30;
  u_xlat6 = (x_1222 * vec3<f32>(x_1223.x, x_1223.x, x_1223.x));
  let x_1228 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_1228) + 1.0f);
  let x_1233 : f32 = u_xlat15.x;
  let x_1235 : f32 = u_xlat15.x;
  u_xlat30.x = (x_1233 * x_1235);
  let x_1239 : f32 = u_xlat30.x;
  let x_1241 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1239 * x_1241);
  let x_1245 : f32 = u_xlat15.x;
  let x_1247 : f32 = u_xlat30.x;
  u_xlat15.x = (x_1245 * x_1247);
  let x_1250 : vec3<f32> = u_xlat1;
  let x_1253 : vec3<f32> = (-(x_1250) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1254 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
  let x_1256 : vec4<f32> = u_xlat3;
  let x_1258 : vec3<f32> = u_xlat15;
  let x_1261 : vec3<f32> = u_xlat1;
  let x_1262 : vec3<f32> = ((vec3<f32>(x_1256.x, x_1256.y, x_1256.z) * vec3<f32>(x_1258.x, x_1258.x, x_1258.x)) + x_1261);
  let x_1263 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
  let x_1265 : vec4<f32> = u_xlat3;
  let x_1267 : vec3<f32> = u_xlat6;
  let x_1268 : vec3<f32> = (vec3<f32>(x_1265.x, x_1265.y, x_1265.z) * x_1267);
  let x_1269 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
  let x_1271 : vec3<f32> = u_xlat2;
  let x_1272 : vec3<f32> = u_xlat4;
  let x_1274 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_1271 * x_1272) + vec3<f32>(x_1274.x, x_1274.y, x_1274.z));
  let x_1277 : vec4<f32> = u_xlat5;
  let x_1279 : f32 = u_xlat45;
  u_xlat15 = (vec3<f32>(x_1277.x, x_1277.y, x_1277.z) * vec3<f32>(x_1279, x_1279, x_1279));
  let x_1282 : vec3<f32> = u_xlat1;
  let x_1284 : vec3<f32> = u_xlat0;
  let x_1286 : vec3<f32> = (-(x_1282) + vec3<f32>(x_1284.x, x_1284.x, x_1284.x));
  let x_1287 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
  let x_1289 : f32 = u_xlat48;
  let x_1291 : vec4<f32> = u_xlat3;
  let x_1294 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1289, x_1289, x_1289) * vec3<f32>(x_1291.x, x_1291.y, x_1291.z)) + x_1294);
  let x_1296 : vec3<f32> = u_xlat15;
  let x_1297 : vec3<f32> = u_xlat1;
  let x_1299 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_1296 * x_1297) + x_1299);
  let x_1306 : vec4<f32> = vs_TEXCOORD0;
  let x_1308 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_1306.x, x_1306.y));
  u_xlat1 = vec3<f32>(x_1308.x, x_1308.y, x_1308.z);
  let x_1312 : vec3<f32> = u_xlat1;
  let x_1315 : vec4<f32> = x_45.x_EmissionColor;
  let x_1318 : vec3<f32> = u_xlat0;
  let x_1319 : vec3<f32> = ((x_1312 * vec3<f32>(x_1315.x, x_1315.y, x_1315.z)) + x_1318);
  let x_1320 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1320.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
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

