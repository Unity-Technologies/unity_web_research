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
  x_Metallic : f32,
  x_Glossiness : f32,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_37 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_SpecCube1 : texture_cube<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlatb46 : bool;
  var u_xlatb47 : bool;
  var u_xlat6 : vec4<f32>;
  var x_209 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var x_393 : vec3<f32>;
  var u_xlat51 : f32;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_577 : f32;
  var x_589 : f32;
  var x_601 : f32;
  var u_xlatb50 : bool;
  var u_xlat50 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_755 : f32;
  var x_767 : f32;
  var x_779 : f32;
  var u_xlat17 : f32;
  var u_xlat16 : f32;
  var u_xlat31 : f32;
  var u_xlat32 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD0.w;
  u_xlat0.x = x_17;
  let x_23 : f32 = vs_TEXCOORD1.w;
  u_xlat0.y = x_23;
  let x_28 : f32 = vs_TEXCOORD2.w;
  u_xlat0.z = x_28;
  let x_32 : vec3<f32> = u_xlat0;
  let x_42 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_32) + x_42);
  let x_45 : vec3<f32> = u_xlat1;
  let x_46 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_48);
  let x_52 : f32 = u_xlat45;
  let x_54 : vec3<f32> = u_xlat1;
  let x_55 : vec3<f32> = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_56 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_72 : vec2<f32> = vs_TEXCOORD3;
  let x_73 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_72);
  u_xlat3 = x_73;
  let x_74 : vec4<f32> = u_xlat3;
  let x_78 : vec4<f32> = x_37.x_Color;
  u_xlat3 = (x_74 * x_78);
  let x_81 : vec4<f32> = u_xlat3;
  let x_83 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (x_81 * x_83);
  let x_91 : vec2<f32> = vs_TEXCOORD3;
  let x_92 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, x_91);
  let x_93 : vec3<f32> = vec3<f32>(x_92.x, x_92.y, x_92.w);
  let x_94 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : f32 = u_xlat5.z;
  let x_99 : f32 = u_xlat5.x;
  u_xlat5.x = (x_97 * x_99);
  let x_102 : vec4<f32> = u_xlat5;
  let x_109 : vec2<f32> = ((vec2<f32>(x_102.x, x_102.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_110 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_110.w);
  let x_112 : vec4<f32> = u_xlat5;
  let x_117 : f32 = x_37.x_BumpScale;
  let x_119 : vec2<f32> = (vec2<f32>(x_112.x, x_112.y) * vec2<f32>(x_117, x_117));
  let x_120 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_119.x, x_119.y, x_120.z, x_120.w);
  let x_123 : vec4<f32> = u_xlat5;
  let x_125 : vec4<f32> = u_xlat5;
  u_xlat46 = dot(vec2<f32>(x_123.x, x_123.y), vec2<f32>(x_125.x, x_125.y));
  let x_128 : f32 = u_xlat46;
  u_xlat46 = min(x_128, 1.0f);
  let x_131 : f32 = u_xlat46;
  u_xlat46 = (-(x_131) + 1.0f);
  let x_134 : f32 = u_xlat46;
  u_xlat5.z = sqrt(x_134);
  let x_137 : vec4<f32> = u_xlat5;
  let x_139 : vec4<f32> = u_xlat5;
  u_xlat46 = dot(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_142 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_142);
  let x_144 : f32 = u_xlat46;
  let x_146 : vec4<f32> = u_xlat5;
  let x_148 : vec3<f32> = (vec3<f32>(x_144, x_144, x_144) * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_156 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb46 = (x_156 == 1.0f);
  let x_158 : bool = u_xlatb46;
  if (x_158) {
    let x_163 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb47 = (x_163 == 1.0f);
    let x_166 : vec4<f32> = vs_TEXCOORD1;
    let x_171 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_173 : vec3<f32> = (vec3<f32>(x_166.w, x_166.w, x_166.w) * vec3<f32>(x_171.x, x_171.y, x_171.z));
    let x_174 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
    let x_177 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_179 : vec4<f32> = vs_TEXCOORD0;
    let x_182 : vec4<f32> = u_xlat6;
    let x_184 : vec3<f32> = ((vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(x_179.w, x_179.w, x_179.w)) + vec3<f32>(x_182.x, x_182.y, x_182.z));
    let x_185 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
    let x_189 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_191 : vec4<f32> = vs_TEXCOORD2;
    let x_194 : vec4<f32> = u_xlat6;
    let x_196 : vec3<f32> = ((vec3<f32>(x_189.x, x_189.y, x_189.z) * vec3<f32>(x_191.w, x_191.w, x_191.w)) + vec3<f32>(x_194.x, x_194.y, x_194.z));
    let x_197 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_199 : vec4<f32> = u_xlat6;
    let x_203 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_205 : vec3<f32> = (vec3<f32>(x_199.x, x_199.y, x_199.z) + vec3<f32>(x_203.x, x_203.y, x_203.z));
    let x_206 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_208 : bool = u_xlatb47;
    if (x_208) {
      let x_212 : vec4<f32> = u_xlat6;
      x_209 = vec3<f32>(x_212.x, x_212.y, x_212.z);
    } else {
      let x_215 : vec3<f32> = u_xlat0;
      x_209 = x_215;
    }
    let x_216 : vec3<f32> = x_209;
    let x_217 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
    let x_219 : vec4<f32> = u_xlat6;
    let x_223 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_225 : vec3<f32> = (vec3<f32>(x_219.x, x_219.y, x_219.z) + -(x_223));
    let x_226 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
    let x_228 : vec4<f32> = u_xlat6;
    let x_232 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_233 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.z) * x_232);
    let x_234 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_234.x, x_233.x, x_233.y, x_233.z);
    let x_238 : f32 = u_xlat6.y;
    u_xlat47 = ((x_238 * 0.25f) + 0.75f);
    let x_245 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat48 = ((x_245 * 0.5f) + 0.75f);
    let x_249 : f32 = u_xlat47;
    let x_250 : f32 = u_xlat48;
    u_xlat6.x = max(x_249, x_250);
    let x_261 : vec4<f32> = u_xlat6;
    let x_263 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_261.x, x_261.z, x_261.w));
    u_xlat6 = x_263;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_269 : vec4<f32> = u_xlat6;
  let x_272 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat47 = dot(x_269, x_272);
  let x_274 : f32 = u_xlat47;
  u_xlat47 = clamp(x_274, 0.0f, 1.0f);
  let x_277 : vec4<f32> = vs_TEXCOORD0;
  let x_279 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_277.x, x_277.y, x_277.z), vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_283 : vec4<f32> = vs_TEXCOORD1;
  let x_285 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(vec3<f32>(x_283.x, x_283.y, x_283.z), vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_289 : vec4<f32> = vs_TEXCOORD2;
  let x_291 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_295 : vec4<f32> = u_xlat6;
  let x_297 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_295.x, x_295.y, x_295.z), vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_300);
  let x_302 : f32 = u_xlat48;
  let x_304 : vec4<f32> = u_xlat6;
  let x_306 : vec3<f32> = (vec3<f32>(x_302, x_302, x_302) * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_311 : f32 = x_37.x_Glossiness;
  u_xlat48 = (-(x_311) + 1.0f);
  let x_314 : vec4<f32> = u_xlat2;
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(-(vec3<f32>(x_314.x, x_314.y, x_314.z)), vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_322 : f32 = u_xlat6.x;
  let x_324 : f32 = u_xlat6.x;
  u_xlat6.x = (x_322 + x_324);
  let x_327 : vec4<f32> = u_xlat5;
  let x_329 : vec4<f32> = u_xlat6;
  let x_333 : vec4<f32> = u_xlat2;
  let x_336 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * -(vec3<f32>(x_329.x, x_329.x, x_329.x))) + -(vec3<f32>(x_333.x, x_333.y, x_333.z)));
  let x_337 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_340 : f32 = u_xlat47;
  let x_344 : vec4<f32> = x_37.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_340, x_340, x_340) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : bool = u_xlatb46;
  if (x_347) {
    let x_351 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb46 = (x_351 == 1.0f);
    let x_354 : vec4<f32> = vs_TEXCOORD1;
    let x_357 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_359 : vec3<f32> = (vec3<f32>(x_354.w, x_354.w, x_354.w) * vec3<f32>(x_357.x, x_357.y, x_357.z));
    let x_360 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
    let x_363 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_365 : vec4<f32> = vs_TEXCOORD0;
    let x_368 : vec4<f32> = u_xlat8;
    let x_370 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.w, x_365.w, x_365.w)) + vec3<f32>(x_368.x, x_368.y, x_368.z));
    let x_371 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
    let x_374 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_376 : vec4<f32> = vs_TEXCOORD2;
    let x_379 : vec4<f32> = u_xlat8;
    let x_381 : vec3<f32> = ((vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(x_376.w, x_376.w, x_376.w)) + vec3<f32>(x_379.x, x_379.y, x_379.z));
    let x_382 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
    let x_384 : vec4<f32> = u_xlat8;
    let x_387 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_389 : vec3<f32> = (vec3<f32>(x_384.x, x_384.y, x_384.z) + vec3<f32>(x_387.x, x_387.y, x_387.z));
    let x_390 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
    let x_392 : bool = u_xlatb46;
    if (x_392) {
      let x_396 : vec4<f32> = u_xlat8;
      x_393 = vec3<f32>(x_396.x, x_396.y, x_396.z);
    } else {
      let x_399 : vec3<f32> = u_xlat0;
      x_393 = x_399;
    }
    let x_400 : vec3<f32> = x_393;
    let x_401 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
    let x_403 : vec4<f32> = u_xlat8;
    let x_406 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_408 : vec3<f32> = (vec3<f32>(x_403.x, x_403.y, x_403.z) + -(x_406));
    let x_409 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
    let x_411 : vec4<f32> = u_xlat8;
    let x_414 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_415 : vec3<f32> = (vec3<f32>(x_411.x, x_411.y, x_411.z) * x_414);
    let x_416 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_416.x, x_415.x, x_415.y, x_415.z);
    let x_419 : f32 = u_xlat8.y;
    u_xlat46 = (x_419 * 0.25f);
    let x_422 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat47 = (x_422 * 0.5f);
    let x_426 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat51 = ((-(x_426) * 0.5f) + 0.25f);
    let x_430 : f32 = u_xlat46;
    let x_431 : f32 = u_xlat47;
    u_xlat46 = max(x_430, x_431);
    let x_433 : f32 = u_xlat51;
    let x_434 : f32 = u_xlat46;
    u_xlat8.x = min(x_433, x_434);
    let x_441 : vec4<f32> = u_xlat8;
    let x_443 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_441.x, x_441.z, x_441.w));
    u_xlat9 = x_443;
    let x_445 : vec4<f32> = u_xlat8;
    let x_448 : vec3<f32> = (vec3<f32>(x_445.x, x_445.z, x_445.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_449 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
    let x_454 : vec4<f32> = u_xlat10;
    let x_456 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_454.x, x_454.y, x_454.z));
    u_xlat10 = x_456;
    let x_457 : vec4<f32> = u_xlat8;
    let x_460 : vec3<f32> = (vec3<f32>(x_457.x, x_457.z, x_457.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_461 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
    let x_466 : vec4<f32> = u_xlat8;
    let x_468 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_466.x, x_466.y, x_466.z));
    u_xlat8 = x_468;
    u_xlat5.w = 1.0f;
    let x_470 : vec4<f32> = u_xlat9;
    let x_471 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_470, x_471);
    let x_474 : vec4<f32> = u_xlat10;
    let x_475 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_474, x_475);
    let x_478 : vec4<f32> = u_xlat8;
    let x_479 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_478, x_479);
  } else {
    u_xlat5.w = 1.0f;
    let x_485 : vec4<f32> = x_37.unity_SHAr;
    let x_486 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_485, x_486);
    let x_491 : vec4<f32> = x_37.unity_SHAg;
    let x_492 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_491, x_492);
    let x_497 : vec4<f32> = x_37.unity_SHAb;
    let x_498 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_497, x_498);
  }
  let x_501 : vec4<f32> = u_xlat9;
  let x_505 : vec3<f32> = vs_TEXCOORD5;
  let x_506 : vec3<f32> = (vec3<f32>(x_501.x, x_501.y, x_501.z) + x_505);
  let x_507 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec4<f32> = u_xlat8;
  let x_512 : vec3<f32> = max(vec3<f32>(x_509.x, x_509.y, x_509.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_513 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_517 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb46 = (0.0f < x_517);
  let x_519 : bool = u_xlatb46;
  if (x_519) {
    let x_522 : vec4<f32> = u_xlat6;
    let x_524 : vec4<f32> = u_xlat6;
    u_xlat46 = dot(vec3<f32>(x_522.x, x_522.y, x_522.z), vec3<f32>(x_524.x, x_524.y, x_524.z));
    let x_527 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_527);
    let x_529 : f32 = u_xlat46;
    let x_531 : vec4<f32> = u_xlat6;
    let x_533 : vec3<f32> = (vec3<f32>(x_529, x_529, x_529) * vec3<f32>(x_531.x, x_531.y, x_531.z));
    let x_534 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
    let x_536 : vec3<f32> = u_xlat0;
    let x_540 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    let x_542 : vec3<f32> = (-(x_536) + vec3<f32>(x_540.x, x_540.y, x_540.z));
    let x_543 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
    let x_545 : vec4<f32> = u_xlat10;
    let x_547 : vec4<f32> = u_xlat9;
    let x_549 : vec3<f32> = (vec3<f32>(x_545.x, x_545.y, x_545.z) / vec3<f32>(x_547.x, x_547.y, x_547.z));
    let x_550 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
    let x_553 : vec3<f32> = u_xlat0;
    let x_557 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(x_553) + vec3<f32>(x_557.x, x_557.y, x_557.z));
    let x_560 : vec3<f32> = u_xlat11;
    let x_561 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_560 / vec3<f32>(x_561.x, x_561.y, x_561.z));
    let x_568 : vec4<f32> = u_xlat9;
    let x_571 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_568.x, x_568.y, x_568.z, x_568.x));
    u_xlatb12 = vec3<bool>(x_571.x, x_571.y, x_571.z);
    let x_574 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_574;
    let x_576 : bool = u_xlatb12.x;
    if (x_576) {
      let x_581 : f32 = u_xlat10.x;
      x_577 = x_581;
    } else {
      let x_584 : f32 = u_xlat11.x;
      x_577 = x_584;
    }
    let x_585 : f32 = x_577;
    hlslcc_movcTemp.x = x_585;
    let x_588 : bool = u_xlatb12.y;
    if (x_588) {
      let x_593 : f32 = u_xlat10.y;
      x_589 = x_593;
    } else {
      let x_596 : f32 = u_xlat11.y;
      x_589 = x_596;
    }
    let x_597 : f32 = x_589;
    hlslcc_movcTemp.y = x_597;
    let x_600 : bool = u_xlatb12.z;
    if (x_600) {
      let x_605 : f32 = u_xlat10.z;
      x_601 = x_605;
    } else {
      let x_608 : f32 = u_xlat11.z;
      x_601 = x_608;
    }
    let x_609 : f32 = x_601;
    hlslcc_movcTemp.z = x_609;
    let x_611 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_611;
    let x_613 : f32 = u_xlat10.y;
    let x_615 : f32 = u_xlat10.x;
    u_xlat46 = min(x_613, x_615);
    let x_618 : f32 = u_xlat10.z;
    let x_619 : f32 = u_xlat46;
    u_xlat46 = min(x_618, x_619);
    let x_621 : vec3<f32> = u_xlat0;
    let x_623 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    let x_626 : vec3<f32> = (x_621 + -(vec3<f32>(x_623.x, x_623.y, x_623.z)));
    let x_627 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
    let x_629 : vec4<f32> = u_xlat9;
    let x_631 : f32 = u_xlat46;
    let x_634 : vec4<f32> = u_xlat10;
    let x_636 : vec3<f32> = ((vec3<f32>(x_629.x, x_629.y, x_629.z) * vec3<f32>(x_631, x_631, x_631)) + vec3<f32>(x_634.x, x_634.y, x_634.z));
    let x_637 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  } else {
    let x_640 : vec4<f32> = u_xlat6;
    let x_641 : vec3<f32> = vec3<f32>(x_640.x, x_640.y, x_640.z);
    let x_642 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  }
  let x_644 : f32 = u_xlat48;
  u_xlat46 = ((-(x_644) * 0.699999988f) + 1.700000048f);
  let x_650 : f32 = u_xlat46;
  let x_651 : f32 = u_xlat48;
  u_xlat46 = (x_650 * x_651);
  let x_653 : f32 = u_xlat46;
  u_xlat46 = (x_653 * 6.0f);
  let x_664 : vec4<f32> = u_xlat9;
  let x_666 : f32 = u_xlat46;
  let x_667 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_664.x, x_664.y, x_664.z), x_666);
  u_xlat9 = x_667;
  let x_669 : f32 = u_xlat9.w;
  u_xlat47 = (x_669 + -1.0f);
  let x_673 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_674 : f32 = u_xlat47;
  u_xlat47 = ((x_673 * x_674) + 1.0f);
  let x_677 : f32 = u_xlat47;
  u_xlat47 = log2(x_677);
  let x_679 : f32 = u_xlat47;
  let x_681 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_679 * x_681);
  let x_683 : f32 = u_xlat47;
  u_xlat47 = exp2(x_683);
  let x_685 : f32 = u_xlat47;
  let x_687 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_685 * x_687);
  let x_689 : vec4<f32> = u_xlat9;
  let x_691 : f32 = u_xlat47;
  let x_693 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) * vec3<f32>(x_691, x_691, x_691));
  let x_694 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_698 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb50 = (x_698 < 0.999989986f);
  let x_701 : bool = u_xlatb50;
  if (x_701) {
    let x_706 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb50 = (0.0f < x_706);
    let x_708 : bool = u_xlatb50;
    if (x_708) {
      let x_712 : vec4<f32> = u_xlat6;
      let x_714 : vec4<f32> = u_xlat6;
      u_xlat50 = dot(vec3<f32>(x_712.x, x_712.y, x_712.z), vec3<f32>(x_714.x, x_714.y, x_714.z));
      let x_717 : f32 = u_xlat50;
      u_xlat50 = inverseSqrt(x_717);
      let x_719 : f32 = u_xlat50;
      let x_721 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_719, x_719, x_719) * vec3<f32>(x_721.x, x_721.y, x_721.z));
      let x_725 : vec3<f32> = u_xlat0;
      let x_729 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_725) + vec3<f32>(x_729.x, x_729.y, x_729.z));
      let x_732 : vec3<f32> = u_xlat12;
      let x_733 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_732 / x_733);
      let x_736 : vec3<f32> = u_xlat0;
      let x_740 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_736) + vec3<f32>(x_740.x, x_740.y, x_740.z));
      let x_743 : vec3<f32> = u_xlat13;
      let x_744 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_743 / x_744);
      let x_747 : vec3<f32> = u_xlat11;
      let x_749 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_747.x, x_747.y, x_747.z, x_747.x));
      u_xlatb14 = vec3<bool>(x_749.x, x_749.y, x_749.z);
      let x_752 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_752;
      let x_754 : bool = u_xlatb14.x;
      if (x_754) {
        let x_759 : f32 = u_xlat12.x;
        x_755 = x_759;
      } else {
        let x_762 : f32 = u_xlat13.x;
        x_755 = x_762;
      }
      let x_763 : f32 = x_755;
      hlslcc_movcTemp_1.x = x_763;
      let x_766 : bool = u_xlatb14.y;
      if (x_766) {
        let x_771 : f32 = u_xlat12.y;
        x_767 = x_771;
      } else {
        let x_774 : f32 = u_xlat13.y;
        x_767 = x_774;
      }
      let x_775 : f32 = x_767;
      hlslcc_movcTemp_1.y = x_775;
      let x_778 : bool = u_xlatb14.z;
      if (x_778) {
        let x_783 : f32 = u_xlat12.z;
        x_779 = x_783;
      } else {
        let x_786 : f32 = u_xlat13.z;
        x_779 = x_786;
      }
      let x_787 : f32 = x_779;
      hlslcc_movcTemp_1.z = x_787;
      let x_789 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_789;
      let x_791 : f32 = u_xlat12.y;
      let x_793 : f32 = u_xlat12.x;
      u_xlat50 = min(x_791, x_793);
      let x_796 : f32 = u_xlat12.z;
      let x_797 : f32 = u_xlat50;
      u_xlat50 = min(x_796, x_797);
      let x_799 : vec3<f32> = u_xlat0;
      let x_801 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_799 + -(vec3<f32>(x_801.x, x_801.y, x_801.z)));
      let x_805 : vec3<f32> = u_xlat11;
      let x_806 : f32 = u_xlat50;
      let x_809 : vec3<f32> = u_xlat0;
      let x_810 : vec3<f32> = ((x_805 * vec3<f32>(x_806, x_806, x_806)) + x_809);
      let x_811 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
    }
    let x_817 : vec4<f32> = u_xlat6;
    let x_819 : f32 = u_xlat46;
    let x_820 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_817.x, x_817.y, x_817.z), x_819);
    u_xlat6 = x_820;
    let x_822 : f32 = u_xlat6.w;
    u_xlat0.x = (x_822 + -1.0f);
    let x_827 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_829 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_827 * x_829) + 1.0f);
    let x_834 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_834);
    let x_838 : f32 = u_xlat0.x;
    let x_840 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_838 * x_840);
    let x_844 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_844);
    let x_848 : f32 = u_xlat0.x;
    let x_850 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_848 * x_850);
    let x_853 : vec4<f32> = u_xlat6;
    let x_855 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_853.x, x_853.y, x_853.z) * vec3<f32>(x_855.x, x_855.x, x_855.x));
    let x_858 : f32 = u_xlat47;
    let x_860 : vec4<f32> = u_xlat9;
    let x_863 : vec3<f32> = u_xlat0;
    let x_865 : vec3<f32> = ((vec3<f32>(x_858, x_858, x_858) * vec3<f32>(x_860.x, x_860.y, x_860.z)) + -(x_863));
    let x_866 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
    let x_869 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_871 : vec4<f32> = u_xlat6;
    let x_874 : vec3<f32> = u_xlat0;
    let x_875 : vec3<f32> = ((vec3<f32>(x_869.w, x_869.w, x_869.w) * vec3<f32>(x_871.x, x_871.y, x_871.z)) + x_874);
    let x_876 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  }
  let x_878 : vec4<f32> = u_xlat3;
  let x_880 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((vec3<f32>(x_878.x, x_878.y, x_878.z) * vec3<f32>(x_880.x, x_880.y, x_880.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_888 : f32 = x_37.x_Metallic;
  let x_890 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_888, x_888, x_888) * x_890) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_896 : f32 = x_37.x_Metallic;
  u_xlat46 = ((-(x_896) * 0.959999979f) + 0.959999979f);
  let x_901 : f32 = u_xlat46;
  let x_903 : vec4<f32> = u_xlat4;
  let x_905 : vec3<f32> = (vec3<f32>(x_901, x_901, x_901) * vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_908 : vec3<f32> = u_xlat1;
  let x_909 : f32 = u_xlat45;
  let x_913 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_908 * vec3<f32>(x_909, x_909, x_909)) + vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_916 : vec3<f32> = u_xlat1;
  let x_917 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_916, x_917);
  let x_919 : f32 = u_xlat45;
  u_xlat45 = max(x_919, 0.001f);
  let x_922 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_922);
  let x_924 : f32 = u_xlat45;
  let x_926 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_924, x_924, x_924) * x_926);
  let x_928 : vec4<f32> = u_xlat5;
  let x_930 : vec4<f32> = u_xlat2;
  u_xlat45 = dot(vec3<f32>(x_928.x, x_928.y, x_928.z), vec3<f32>(x_930.x, x_930.y, x_930.z));
  let x_933 : vec4<f32> = u_xlat5;
  let x_936 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_933.x, x_933.y, x_933.z), vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_941 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_941, 0.0f, 1.0f);
  let x_945 : vec4<f32> = u_xlat5;
  let x_947 : vec3<f32> = u_xlat1;
  u_xlat17 = dot(vec3<f32>(x_945.x, x_945.y, x_945.z), x_947);
  let x_949 : f32 = u_xlat17;
  u_xlat17 = clamp(x_949, 0.0f, 1.0f);
  let x_952 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_954 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_952.x, x_952.y, x_952.z), x_954);
  let x_958 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_958, 0.0f, 1.0f);
  let x_963 : f32 = u_xlat1.x;
  let x_965 : f32 = u_xlat1.x;
  u_xlat16 = (x_963 * x_965);
  let x_967 : f32 = u_xlat16;
  let x_969 : f32 = u_xlat48;
  u_xlat16 = dot(vec2<f32>(x_967, x_967), vec2<f32>(x_969, x_969));
  let x_972 : f32 = u_xlat16;
  u_xlat16 = (x_972 + -0.5f);
  let x_977 : f32 = u_xlat2.x;
  u_xlat31 = (-(x_977) + 1.0f);
  let x_981 : f32 = u_xlat31;
  let x_982 : f32 = u_xlat31;
  u_xlat32 = (x_981 * x_982);
  let x_984 : f32 = u_xlat32;
  let x_985 : f32 = u_xlat32;
  u_xlat32 = (x_984 * x_985);
  let x_987 : f32 = u_xlat31;
  let x_988 : f32 = u_xlat32;
  u_xlat31 = (x_987 * x_988);
  let x_990 : f32 = u_xlat16;
  let x_991 : f32 = u_xlat31;
  u_xlat31 = ((x_990 * x_991) + 1.0f);
  let x_994 : f32 = u_xlat45;
  u_xlat32 = (-(abs(x_994)) + 1.0f);
  let x_998 : f32 = u_xlat32;
  let x_999 : f32 = u_xlat32;
  u_xlat47 = (x_998 * x_999);
  let x_1001 : f32 = u_xlat47;
  let x_1002 : f32 = u_xlat47;
  u_xlat47 = (x_1001 * x_1002);
  let x_1004 : f32 = u_xlat32;
  let x_1005 : f32 = u_xlat47;
  u_xlat32 = (x_1004 * x_1005);
  let x_1007 : f32 = u_xlat16;
  let x_1008 : f32 = u_xlat32;
  u_xlat16 = ((x_1007 * x_1008) + 1.0f);
  let x_1011 : f32 = u_xlat16;
  let x_1012 : f32 = u_xlat31;
  u_xlat16 = (x_1011 * x_1012);
  let x_1015 : f32 = u_xlat2.x;
  let x_1016 : f32 = u_xlat16;
  u_xlat16 = (x_1015 * x_1016);
  let x_1018 : f32 = u_xlat48;
  let x_1019 : f32 = u_xlat48;
  u_xlat31 = (x_1018 * x_1019);
  let x_1021 : f32 = u_xlat31;
  u_xlat31 = max(x_1021, 0.002f);
  let x_1024 : f32 = u_xlat31;
  u_xlat47 = (-(x_1024) + 1.0f);
  let x_1027 : f32 = u_xlat45;
  let x_1029 : f32 = u_xlat47;
  let x_1031 : f32 = u_xlat31;
  u_xlat48 = ((abs(x_1027) * x_1029) + x_1031);
  let x_1034 : f32 = u_xlat2.x;
  let x_1035 : f32 = u_xlat47;
  let x_1037 : f32 = u_xlat31;
  u_xlat47 = ((x_1034 * x_1035) + x_1037);
  let x_1039 : f32 = u_xlat45;
  let x_1041 : f32 = u_xlat47;
  u_xlat45 = (abs(x_1039) * x_1041);
  let x_1044 : f32 = u_xlat2.x;
  let x_1045 : f32 = u_xlat48;
  let x_1047 : f32 = u_xlat45;
  u_xlat45 = ((x_1044 * x_1045) + x_1047);
  let x_1049 : f32 = u_xlat45;
  u_xlat45 = (x_1049 + 0.00001f);
  let x_1052 : f32 = u_xlat45;
  u_xlat45 = (0.5f / x_1052);
  let x_1054 : f32 = u_xlat31;
  let x_1055 : f32 = u_xlat31;
  u_xlat47 = (x_1054 * x_1055);
  let x_1057 : f32 = u_xlat17;
  let x_1058 : f32 = u_xlat47;
  let x_1060 : f32 = u_xlat17;
  u_xlat48 = ((x_1057 * x_1058) + -(x_1060));
  let x_1063 : f32 = u_xlat48;
  let x_1064 : f32 = u_xlat17;
  u_xlat17 = ((x_1063 * x_1064) + 1.0f);
  let x_1067 : f32 = u_xlat47;
  u_xlat47 = (x_1067 * 0.318309873f);
  let x_1070 : f32 = u_xlat17;
  let x_1071 : f32 = u_xlat17;
  u_xlat17 = ((x_1070 * x_1071) + 0.0000001f);
  let x_1075 : f32 = u_xlat47;
  let x_1076 : f32 = u_xlat17;
  u_xlat17 = (x_1075 / x_1076);
  let x_1078 : f32 = u_xlat45;
  let x_1079 : f32 = u_xlat17;
  u_xlat45 = (x_1078 * x_1079);
  let x_1082 : f32 = u_xlat2.x;
  let x_1083 : f32 = u_xlat45;
  u_xlat45 = (x_1082 * x_1083);
  let x_1085 : f32 = u_xlat45;
  u_xlat45 = (x_1085 * 3.141592741f);
  let x_1088 : f32 = u_xlat45;
  u_xlat45 = max(x_1088, 0.0f);
  let x_1090 : f32 = u_xlat31;
  let x_1091 : f32 = u_xlat31;
  u_xlat31 = ((x_1090 * x_1091) + 1.0f);
  let x_1094 : f32 = u_xlat31;
  u_xlat31 = (1.0f / x_1094);
  let x_1096 : vec3<f32> = u_xlat0;
  let x_1097 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1096, x_1097);
  let x_1102 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1102 == 0.0f));
  let x_1104 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1104);
  let x_1107 : f32 = u_xlat45;
  let x_1109 : f32 = u_xlat2.x;
  u_xlat45 = (x_1107 * x_1109);
  let x_1111 : f32 = u_xlat46;
  let x_1114 : f32 = x_37.x_Glossiness;
  u_xlat46 = (-(x_1111) + x_1114);
  let x_1116 : f32 = u_xlat46;
  u_xlat46 = (x_1116 + 1.0f);
  let x_1118 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1118, 0.0f, 1.0f);
  let x_1120 : vec3<f32> = u_xlat7;
  let x_1121 : f32 = u_xlat16;
  let x_1124 : vec4<f32> = u_xlat8;
  let x_1126 : vec3<f32> = ((x_1120 * vec3<f32>(x_1121, x_1121, x_1121)) + vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
  let x_1127 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1126.z);
  let x_1129 : vec3<f32> = u_xlat7;
  let x_1130 : f32 = u_xlat45;
  let x_1132 : vec3<f32> = (x_1129 * vec3<f32>(x_1130, x_1130, x_1130));
  let x_1133 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1136 : f32 = u_xlat1.x;
  u_xlat45 = (-(x_1136) + 1.0f);
  let x_1139 : f32 = u_xlat45;
  let x_1140 : f32 = u_xlat45;
  u_xlat1.x = (x_1139 * x_1140);
  let x_1144 : f32 = u_xlat1.x;
  let x_1146 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1144 * x_1146);
  let x_1149 : f32 = u_xlat45;
  let x_1151 : f32 = u_xlat1.x;
  u_xlat45 = (x_1149 * x_1151);
  let x_1153 : vec3<f32> = u_xlat0;
  let x_1156 : vec3<f32> = (-(x_1153) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1157 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
  let x_1159 : vec4<f32> = u_xlat5;
  let x_1161 : f32 = u_xlat45;
  let x_1164 : vec3<f32> = u_xlat0;
  let x_1165 : vec3<f32> = ((vec3<f32>(x_1159.x, x_1159.y, x_1159.z) * vec3<f32>(x_1161, x_1161, x_1161)) + x_1164);
  let x_1166 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
  let x_1168 : vec4<f32> = u_xlat4;
  let x_1170 : vec4<f32> = u_xlat5;
  let x_1172 : vec3<f32> = (vec3<f32>(x_1168.x, x_1168.y, x_1168.z) * vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
  let x_1173 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
  let x_1175 : vec4<f32> = u_xlat3;
  let x_1177 : vec4<f32> = u_xlat2;
  let x_1180 : vec4<f32> = u_xlat4;
  let x_1182 : vec3<f32> = ((vec3<f32>(x_1175.x, x_1175.y, x_1175.z) * vec3<f32>(x_1177.x, x_1177.y, x_1177.w)) + vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
  let x_1183 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1182.x, x_1182.y, x_1183.z, x_1182.z);
  let x_1185 : vec4<f32> = u_xlat10;
  let x_1187 : f32 = u_xlat31;
  u_xlat1 = (vec3<f32>(x_1185.x, x_1185.y, x_1185.z) * vec3<f32>(x_1187, x_1187, x_1187));
  let x_1190 : vec3<f32> = u_xlat0;
  let x_1192 : f32 = u_xlat46;
  let x_1194 : vec3<f32> = (-(x_1190) + vec3<f32>(x_1192, x_1192, x_1192));
  let x_1195 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
  let x_1197 : f32 = u_xlat32;
  let x_1199 : vec4<f32> = u_xlat3;
  let x_1202 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1197, x_1197, x_1197) * vec3<f32>(x_1199.x, x_1199.y, x_1199.z)) + x_1202);
  let x_1204 : vec3<f32> = u_xlat1;
  let x_1205 : vec3<f32> = u_xlat0;
  let x_1207 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1204 * x_1205) + vec3<f32>(x_1207.x, x_1207.y, x_1207.w));
  let x_1211 : f32 = vs_TEXCOORD6;
  let x_1213 : f32 = x_37.x_ProjectionParams.y;
  u_xlat45 = (x_1211 / x_1213);
  let x_1215 : f32 = u_xlat45;
  u_xlat45 = (-(x_1215) + 1.0f);
  let x_1218 : f32 = u_xlat45;
  let x_1220 : f32 = x_37.x_ProjectionParams.z;
  u_xlat45 = (x_1218 * x_1220);
  let x_1222 : f32 = u_xlat45;
  u_xlat45 = max(x_1222, 0.0f);
  let x_1224 : f32 = u_xlat45;
  let x_1227 : f32 = x_37.unity_FogParams.x;
  u_xlat45 = (x_1224 * x_1227);
  let x_1229 : f32 = u_xlat45;
  let x_1230 : f32 = u_xlat45;
  u_xlat45 = (x_1229 * -(x_1230));
  let x_1233 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1233);
  let x_1235 : vec3<f32> = u_xlat0;
  let x_1238 : vec4<f32> = x_37.unity_FogColor;
  u_xlat0 = (x_1235 + -(vec3<f32>(x_1238.x, x_1238.y, x_1238.z)));
  let x_1244 : f32 = u_xlat45;
  let x_1246 : vec3<f32> = u_xlat0;
  let x_1249 : vec4<f32> = x_37.unity_FogColor;
  let x_1251 : vec3<f32> = ((vec3<f32>(x_1244, x_1244, x_1244) * x_1246) + vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
  let x_1252 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1255 : f32 = u_xlat4.w;
  SV_Target0.w = x_1255;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(6) vs_TEXCOORD5_param : vec3<f32>, @location(5) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

