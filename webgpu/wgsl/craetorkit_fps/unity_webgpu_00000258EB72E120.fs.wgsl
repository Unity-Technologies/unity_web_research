struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ZBufferParams : vec4<f32>,
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
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color1 : vec4<f32>,
  x_Color2 : vec4<f32>,
  x_Edge : f32,
  x_Fade : f32,
  x_Fog : f32,
}

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_37 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(11) var sampler_Normal : sampler;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(13) var sampler_Noise : sampler;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_Ramp : texture_2d<f32>;

@group(0) @binding(12) var sampler_Ramp : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(6) var unity_SpecCube1 : texture_cube<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat44 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlatb44 : bool;
  var u_xlatb3 : bool;
  var x_398 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat31 : f32;
  var u_xlat7 : vec4<f32>;
  var x_587 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb11 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_772 : f32;
  var x_784 : f32;
  var x_796 : f32;
  var u_xlatb47 : bool;
  var u_xlat47 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb13 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_952 : f32;
  var x_964 : f32;
  var x_976 : f32;
  var u_xlat16 : f32;
  var u_xlat15 : f32;
  var u_xlat29 : f32;
  var u_xlat30 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD1.w;
  u_xlat0.x = x_17;
  let x_23 : f32 = vs_TEXCOORD2.w;
  u_xlat0.y = x_23;
  let x_28 : f32 = vs_TEXCOORD3.w;
  u_xlat0.z = x_28;
  let x_32 : vec3<f32> = u_xlat0;
  let x_42 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_32) + x_42);
  let x_45 : vec3<f32> = u_xlat1;
  let x_46 : vec3<f32> = u_xlat1;
  u_xlat42 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_48);
  let x_52 : f32 = u_xlat42;
  let x_54 : vec3<f32> = u_xlat1;
  let x_55 : vec3<f32> = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_56 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_61 : vec4<f32> = vs_TEXCOORD4;
  let x_63 : vec4<f32> = vs_TEXCOORD4;
  let x_65 : vec2<f32> = (vec2<f32>(x_61.x, x_61.y) / vec2<f32>(x_63.w, x_63.w));
  let x_66 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_66.w);
  let x_79 : vec4<f32> = u_xlat3;
  let x_81 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_79.x, x_79.y));
  u_xlat43 = x_81.x;
  let x_86 : f32 = x_37.x_ZBufferParams.z;
  let x_87 : f32 = u_xlat43;
  let x_90 : f32 = x_37.x_ZBufferParams.w;
  u_xlat43 = ((x_86 * x_87) + x_90);
  let x_93 : f32 = u_xlat43;
  u_xlat43 = (1.0f / x_93);
  let x_95 : f32 = u_xlat43;
  let x_97 : f32 = vs_TEXCOORD4.z;
  u_xlat43 = (x_95 + -(x_97));
  let x_100 : f32 = u_xlat43;
  let x_105 : f32 = x_37.x_Edge;
  let x_108 : f32 = x_37.x_Fog;
  let x_111 : f32 = x_37.x_Fade;
  let x_114 : vec3<f32> = (abs(vec3<f32>(x_100, x_100, x_100)) + -(vec3<f32>(x_105, x_108, x_111)));
  let x_115 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_117 : vec4<f32> = u_xlat3;
  let x_120 : f32 = x_37.x_Edge;
  let x_122 : f32 = x_37.x_Fog;
  let x_124 : f32 = x_37.x_Fade;
  let x_127 : vec3<f32> = (vec3<f32>(x_117.x, x_117.y, x_117.z) / -(vec3<f32>(x_120, x_122, x_124)));
  let x_128 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : vec4<f32> = u_xlat3;
  let x_135 : vec3<f32> = clamp(vec3<f32>(x_130.x, x_130.y, x_130.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_136 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : f32 = u_xlat3.y;
  u_xlat43 = (-(x_139) + 1.0f);
  let x_146 : vec4<f32> = x_37.x_Time;
  let x_153 : vec4<f32> = vs_TEXCOORD0;
  let x_155 : vec3<f32> = ((vec3<f32>(x_146.x, x_146.x, x_146.x) * vec3<f32>(0.200000003f, 0.100000001f, 0.200000003f)) + vec3<f32>(x_153.z, x_153.w, x_153.y));
  let x_156 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_159 : vec4<f32> = u_xlat4;
  let x_163 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(0.5f, 0.5f));
  let x_164 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_163.x, x_164.y, x_163.y);
  let x_172 : vec3<f32> = u_xlat17;
  let x_174 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_172.x, x_172.z));
  let x_175 : vec3<f32> = vec3<f32>(x_174.x, x_174.y, x_174.w);
  let x_176 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_179 : f32 = u_xlat5.z;
  let x_181 : f32 = u_xlat5.x;
  u_xlat5.x = (x_179 * x_181);
  let x_184 : vec4<f32> = u_xlat5;
  let x_191 : vec2<f32> = ((vec2<f32>(x_184.x, x_184.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_192 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_191.x, x_191.y, x_192.z, x_192.w);
  let x_195 : vec4<f32> = u_xlat5;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat44 = dot(vec2<f32>(x_195.x, x_195.y), vec2<f32>(x_197.x, x_197.y));
  let x_200 : f32 = u_xlat44;
  u_xlat44 = min(x_200, 1.0f);
  let x_202 : f32 = u_xlat44;
  u_xlat44 = (-(x_202) + 1.0f);
  let x_205 : f32 = u_xlat44;
  u_xlat5.z = sqrt(x_205);
  let x_208 : vec4<f32> = vs_TEXCOORD0;
  let x_209 : vec2<f32> = vec2<f32>(x_208.x, x_208.x);
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_209.x, x_210.y, x_210.z, x_209.y);
  let x_212 : vec4<f32> = u_xlat5;
  let x_216 : vec4<f32> = u_xlat4;
  let x_218 : vec2<f32> = ((vec2<f32>(x_212.x, x_212.y) * vec2<f32>(0.200000003f, 0.200000003f)) + vec2<f32>(x_216.w, x_216.z));
  let x_219 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_218.x, x_219.y, x_218.y);
  let x_222 : f32 = vs_TEXCOORD0.y;
  let x_224 : f32 = x_37.x_Time.x;
  u_xlat4.y = (x_222 + x_224);
  let x_227 : vec4<f32> = u_xlat5;
  let x_229 : vec4<f32> = u_xlat4;
  let x_231 : vec2<f32> = (vec2<f32>(x_227.x, x_227.y) + vec2<f32>(x_229.x, x_229.y));
  let x_232 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_232.w);
  let x_234 : vec4<f32> = u_xlat4;
  let x_236 : vec2<f32> = (vec2<f32>(x_234.x, x_234.y) * vec2<f32>(0.200000003f, 0.200000003f));
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_236.x, x_236.y, x_237.z, x_237.w);
  let x_244 : vec4<f32> = u_xlat4;
  let x_246 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_244.x, x_244.y));
  u_xlat44 = x_246.x;
  let x_253 : vec3<f32> = u_xlat17;
  let x_255 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_253.x, x_253.z));
  u_xlat17.x = x_255.x;
  u_xlat17.z = 0.0f;
  let x_264 : vec3<f32> = u_xlat17;
  let x_266 : vec4<f32> = textureSample(x_Ramp, sampler_Ramp, vec2<f32>(x_264.x, x_264.z));
  let x_267 : vec3<f32> = vec3<f32>(x_266.x, x_266.y, x_266.z);
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_271 : vec4<f32> = u_xlat4;
  let x_276 : vec4<f32> = x_37.x_Color2;
  let x_278 : vec3<f32> = (-(vec3<f32>(x_271.x, x_271.y, x_271.z)) + vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_281 : vec4<f32> = u_xlat3;
  let x_283 : vec4<f32> = u_xlat6;
  let x_286 : vec4<f32> = u_xlat4;
  let x_288 : vec3<f32> = ((vec3<f32>(x_281.x, x_281.x, x_281.x) * vec3<f32>(x_283.x, x_283.y, x_283.z)) + vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : f32 = u_xlat43;
  let x_292 : f32 = u_xlat44;
  u_xlat44 = (x_291 + -(x_292));
  let x_295 : f32 = u_xlat44;
  u_xlat44 = clamp(x_295, 0.0f, 1.0f);
  let x_297 : f32 = u_xlat44;
  u_xlat3.x = ((x_297 * -2.0f) + 3.0f);
  let x_303 : f32 = u_xlat44;
  let x_304 : f32 = u_xlat44;
  u_xlat44 = (x_303 * x_304);
  let x_306 : f32 = u_xlat44;
  let x_308 : f32 = u_xlat3.x;
  u_xlat44 = (x_306 * x_308);
  let x_310 : f32 = u_xlat43;
  let x_311 : f32 = u_xlat44;
  u_xlat43 = (x_310 * x_311);
  let x_315 : vec4<f32> = x_37.x_Color1;
  let x_318 : vec4<f32> = x_37.x_Color2;
  let x_321 : vec3<f32> = (vec3<f32>(x_315.x, x_315.y, x_315.z) + -(vec3<f32>(x_318.x, x_318.y, x_318.z)));
  let x_322 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : f32 = u_xlat43;
  let x_326 : vec4<f32> = u_xlat6;
  let x_330 : vec4<f32> = x_37.x_Color2;
  let x_332 : vec3<f32> = ((vec3<f32>(x_324, x_324, x_324) * vec3<f32>(x_326.x, x_326.y, x_326.z)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat4;
  let x_337 : vec4<f32> = u_xlat6;
  let x_339 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_343 : f32 = u_xlat17.x;
  u_xlat43 = (-(x_343) + 1.0f);
  let x_349 : f32 = u_xlat3.z;
  SV_Target0.w = (-(x_349) + 1.0f);
  let x_359 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb44 = (x_359 == 1.0f);
  let x_361 : bool = u_xlatb44;
  if (x_361) {
    let x_366 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb3 = (x_366 == 1.0f);
    let x_368 : vec4<f32> = vs_TEXCOORD2;
    let x_372 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    u_xlat17 = (vec3<f32>(x_368.w, x_368.w, x_368.w) * vec3<f32>(x_372.x, x_372.y, x_372.z));
    let x_376 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_378 : vec4<f32> = vs_TEXCOORD1;
    let x_381 : vec3<f32> = u_xlat17;
    u_xlat17 = ((vec3<f32>(x_376.x, x_376.y, x_376.z) * vec3<f32>(x_378.w, x_378.w, x_378.w)) + x_381);
    let x_384 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_386 : vec4<f32> = vs_TEXCOORD3;
    let x_389 : vec3<f32> = u_xlat17;
    u_xlat17 = ((vec3<f32>(x_384.x, x_384.y, x_384.z) * vec3<f32>(x_386.w, x_386.w, x_386.w)) + x_389);
    let x_391 : vec3<f32> = u_xlat17;
    let x_394 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    u_xlat17 = (x_391 + vec3<f32>(x_394.x, x_394.y, x_394.z));
    let x_397 : bool = u_xlatb3;
    if (x_397) {
      let x_401 : vec3<f32> = u_xlat17;
      x_398 = x_401;
    } else {
      let x_403 : vec3<f32> = u_xlat0;
      x_398 = x_403;
    }
    let x_404 : vec3<f32> = x_398;
    let x_405 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
    let x_407 : vec4<f32> = u_xlat3;
    let x_411 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_413 : vec3<f32> = (vec3<f32>(x_407.x, x_407.y, x_407.z) + -(x_411));
    let x_414 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
    let x_416 : vec4<f32> = u_xlat3;
    let x_420 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_421 : vec3<f32> = (vec3<f32>(x_416.x, x_416.y, x_416.z) * x_420);
    let x_422 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_422.x, x_421.x, x_421.y, x_421.z);
    let x_425 : f32 = u_xlat3.y;
    u_xlat17.x = ((x_425 * 0.25f) + 0.75f);
    let x_433 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat46 = ((x_433 * 0.5f) + 0.75f);
    let x_437 : f32 = u_xlat17.x;
    let x_438 : f32 = u_xlat46;
    u_xlat3.x = max(x_437, x_438);
    let x_449 : vec4<f32> = u_xlat3;
    let x_451 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_449.x, x_449.z, x_449.w));
    u_xlat3 = x_451;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_457 : vec4<f32> = u_xlat3;
  let x_460 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat3.x = dot(x_457, x_460);
  let x_464 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_464, 0.0f, 1.0f);
  let x_467 : vec4<f32> = vs_TEXCOORD1;
  let x_469 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_467.x, x_467.y, x_467.z), vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_473 : vec4<f32> = vs_TEXCOORD2;
  let x_475 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(vec3<f32>(x_473.x, x_473.y, x_473.z), vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_479 : vec4<f32> = vs_TEXCOORD3;
  let x_481 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(vec3<f32>(x_479.x, x_479.y, x_479.z), vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_485 : vec4<f32> = u_xlat6;
  let x_487 : vec4<f32> = u_xlat6;
  u_xlat17.x = dot(vec3<f32>(x_485.x, x_485.y, x_485.z), vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_492 : f32 = u_xlat17.x;
  u_xlat17.x = inverseSqrt(x_492);
  let x_495 : vec3<f32> = u_xlat17;
  let x_497 : vec4<f32> = u_xlat6;
  let x_499 : vec3<f32> = (vec3<f32>(x_495.x, x_495.x, x_495.x) * vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : f32 = u_xlat43;
  let x_506 : f32 = x_37.x_Glossiness;
  u_xlat17.x = ((-(x_502) * x_506) + 1.0f);
  let x_511 : vec4<f32> = u_xlat2;
  let x_514 : vec4<f32> = u_xlat5;
  u_xlat31 = dot(-(vec3<f32>(x_511.x, x_511.y, x_511.z)), vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : f32 = u_xlat31;
  let x_518 : f32 = u_xlat31;
  u_xlat31 = (x_517 + x_518);
  let x_520 : vec4<f32> = u_xlat5;
  let x_522 : f32 = u_xlat31;
  let x_526 : vec4<f32> = u_xlat2;
  let x_529 : vec3<f32> = ((vec3<f32>(x_520.x, x_520.y, x_520.z) * -(vec3<f32>(x_522, x_522, x_522))) + -(vec3<f32>(x_526.x, x_526.y, x_526.z)));
  let x_530 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_532 : vec4<f32> = u_xlat3;
  let x_536 : vec4<f32> = x_37.x_LightColor0;
  let x_538 : vec3<f32> = (vec3<f32>(x_532.x, x_532.x, x_532.x) * vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_538.x, x_539.y, x_538.y, x_538.z);
  let x_541 : bool = u_xlatb44;
  if (x_541) {
    let x_545 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb44 = (x_545 == 1.0f);
    let x_548 : vec4<f32> = vs_TEXCOORD2;
    let x_551 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_553 : vec3<f32> = (vec3<f32>(x_548.w, x_548.w, x_548.w) * vec3<f32>(x_551.x, x_551.y, x_551.z));
    let x_554 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
    let x_557 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_559 : vec4<f32> = vs_TEXCOORD1;
    let x_562 : vec4<f32> = u_xlat7;
    let x_564 : vec3<f32> = ((vec3<f32>(x_557.x, x_557.y, x_557.z) * vec3<f32>(x_559.w, x_559.w, x_559.w)) + vec3<f32>(x_562.x, x_562.y, x_562.z));
    let x_565 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
    let x_568 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_570 : vec4<f32> = vs_TEXCOORD3;
    let x_573 : vec4<f32> = u_xlat7;
    let x_575 : vec3<f32> = ((vec3<f32>(x_568.x, x_568.y, x_568.z) * vec3<f32>(x_570.w, x_570.w, x_570.w)) + vec3<f32>(x_573.x, x_573.y, x_573.z));
    let x_576 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
    let x_578 : vec4<f32> = u_xlat7;
    let x_581 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_583 : vec3<f32> = (vec3<f32>(x_578.x, x_578.y, x_578.z) + vec3<f32>(x_581.x, x_581.y, x_581.z));
    let x_584 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
    let x_586 : bool = u_xlatb44;
    if (x_586) {
      let x_590 : vec4<f32> = u_xlat7;
      x_587 = vec3<f32>(x_590.x, x_590.y, x_590.z);
    } else {
      let x_593 : vec3<f32> = u_xlat0;
      x_587 = x_593;
    }
    let x_594 : vec3<f32> = x_587;
    let x_595 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
    let x_597 : vec4<f32> = u_xlat7;
    let x_600 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_602 : vec3<f32> = (vec3<f32>(x_597.x, x_597.y, x_597.z) + -(x_600));
    let x_603 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
    let x_605 : vec4<f32> = u_xlat7;
    let x_608 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_609 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) * x_608);
    let x_610 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_610.x, x_609.x, x_609.y, x_609.z);
    let x_613 : f32 = u_xlat7.y;
    u_xlat44 = (x_613 * 0.25f);
    let x_616 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat46 = (x_616 * 0.5f);
    let x_620 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat48 = ((-(x_620) * 0.5f) + 0.25f);
    let x_624 : f32 = u_xlat44;
    let x_625 : f32 = u_xlat46;
    u_xlat44 = max(x_624, x_625);
    let x_627 : f32 = u_xlat48;
    let x_628 : f32 = u_xlat44;
    u_xlat7.x = min(x_627, x_628);
    let x_635 : vec4<f32> = u_xlat7;
    let x_637 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_635.x, x_635.z, x_635.w));
    u_xlat8 = x_637;
    let x_639 : vec4<f32> = u_xlat7;
    let x_642 : vec3<f32> = (vec3<f32>(x_639.x, x_639.z, x_639.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_643 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
    let x_648 : vec4<f32> = u_xlat9;
    let x_650 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_648.x, x_648.y, x_648.z));
    u_xlat9 = x_650;
    let x_651 : vec4<f32> = u_xlat7;
    let x_654 : vec3<f32> = (vec3<f32>(x_651.x, x_651.z, x_651.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_655 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
    let x_660 : vec4<f32> = u_xlat7;
    let x_662 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_660.x, x_660.y, x_660.z));
    u_xlat7 = x_662;
    u_xlat5.w = 1.0f;
    let x_664 : vec4<f32> = u_xlat8;
    let x_665 : vec4<f32> = u_xlat5;
    u_xlat8.x = dot(x_664, x_665);
    let x_668 : vec4<f32> = u_xlat9;
    let x_669 : vec4<f32> = u_xlat5;
    u_xlat8.y = dot(x_668, x_669);
    let x_672 : vec4<f32> = u_xlat7;
    let x_673 : vec4<f32> = u_xlat5;
    u_xlat8.z = dot(x_672, x_673);
  } else {
    u_xlat5.w = 1.0f;
    let x_680 : vec4<f32> = x_37.unity_SHAr;
    let x_681 : vec4<f32> = u_xlat5;
    u_xlat8.x = dot(x_680, x_681);
    let x_686 : vec4<f32> = x_37.unity_SHAg;
    let x_687 : vec4<f32> = u_xlat5;
    u_xlat8.y = dot(x_686, x_687);
    let x_692 : vec4<f32> = x_37.unity_SHAb;
    let x_693 : vec4<f32> = u_xlat5;
    u_xlat8.z = dot(x_692, x_693);
  }
  let x_696 : vec4<f32> = u_xlat8;
  let x_700 : vec3<f32> = vs_TEXCOORD7;
  let x_701 : vec3<f32> = (vec3<f32>(x_696.x, x_696.y, x_696.z) + x_700);
  let x_702 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat7;
  let x_707 : vec3<f32> = max(vec3<f32>(x_704.x, x_704.y, x_704.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_708 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_712 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb44 = (0.0f < x_712);
  let x_714 : bool = u_xlatb44;
  if (x_714) {
    let x_717 : vec4<f32> = u_xlat6;
    let x_719 : vec4<f32> = u_xlat6;
    u_xlat44 = dot(vec3<f32>(x_717.x, x_717.y, x_717.z), vec3<f32>(x_719.x, x_719.y, x_719.z));
    let x_722 : f32 = u_xlat44;
    u_xlat44 = inverseSqrt(x_722);
    let x_724 : f32 = u_xlat44;
    let x_726 : vec4<f32> = u_xlat6;
    let x_728 : vec3<f32> = (vec3<f32>(x_724, x_724, x_724) * vec3<f32>(x_726.x, x_726.y, x_726.z));
    let x_729 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
    let x_731 : vec3<f32> = u_xlat0;
    let x_735 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    let x_737 : vec3<f32> = (-(x_731) + vec3<f32>(x_735.x, x_735.y, x_735.z));
    let x_738 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
    let x_740 : vec4<f32> = u_xlat9;
    let x_742 : vec4<f32> = u_xlat8;
    let x_744 : vec3<f32> = (vec3<f32>(x_740.x, x_740.y, x_740.z) / vec3<f32>(x_742.x, x_742.y, x_742.z));
    let x_745 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
    let x_748 : vec3<f32> = u_xlat0;
    let x_752 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat10 = (-(x_748) + vec3<f32>(x_752.x, x_752.y, x_752.z));
    let x_755 : vec3<f32> = u_xlat10;
    let x_756 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_755 / vec3<f32>(x_756.x, x_756.y, x_756.z));
    let x_763 : vec4<f32> = u_xlat8;
    let x_766 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_763.x, x_763.y, x_763.z, x_763.x));
    u_xlatb11 = vec3<bool>(x_766.x, x_766.y, x_766.z);
    let x_769 : vec4<f32> = u_xlat9;
    hlslcc_movcTemp = x_769;
    let x_771 : bool = u_xlatb11.x;
    if (x_771) {
      let x_776 : f32 = u_xlat9.x;
      x_772 = x_776;
    } else {
      let x_779 : f32 = u_xlat10.x;
      x_772 = x_779;
    }
    let x_780 : f32 = x_772;
    hlslcc_movcTemp.x = x_780;
    let x_783 : bool = u_xlatb11.y;
    if (x_783) {
      let x_788 : f32 = u_xlat9.y;
      x_784 = x_788;
    } else {
      let x_791 : f32 = u_xlat10.y;
      x_784 = x_791;
    }
    let x_792 : f32 = x_784;
    hlslcc_movcTemp.y = x_792;
    let x_795 : bool = u_xlatb11.z;
    if (x_795) {
      let x_800 : f32 = u_xlat9.z;
      x_796 = x_800;
    } else {
      let x_803 : f32 = u_xlat10.z;
      x_796 = x_803;
    }
    let x_804 : f32 = x_796;
    hlslcc_movcTemp.z = x_804;
    let x_806 : vec4<f32> = hlslcc_movcTemp;
    u_xlat9 = x_806;
    let x_808 : f32 = u_xlat9.y;
    let x_810 : f32 = u_xlat9.x;
    u_xlat44 = min(x_808, x_810);
    let x_813 : f32 = u_xlat9.z;
    let x_814 : f32 = u_xlat44;
    u_xlat44 = min(x_813, x_814);
    let x_816 : vec3<f32> = u_xlat0;
    let x_818 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    let x_821 : vec3<f32> = (x_816 + -(vec3<f32>(x_818.x, x_818.y, x_818.z)));
    let x_822 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
    let x_824 : vec4<f32> = u_xlat8;
    let x_826 : f32 = u_xlat44;
    let x_829 : vec4<f32> = u_xlat9;
    let x_831 : vec3<f32> = ((vec3<f32>(x_824.x, x_824.y, x_824.z) * vec3<f32>(x_826, x_826, x_826)) + vec3<f32>(x_829.x, x_829.y, x_829.z));
    let x_832 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  } else {
    let x_835 : vec4<f32> = u_xlat6;
    let x_836 : vec3<f32> = vec3<f32>(x_835.x, x_835.y, x_835.z);
    let x_837 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  }
  let x_840 : f32 = u_xlat17.x;
  u_xlat44 = ((-(x_840) * 0.699999988f) + 1.700000048f);
  let x_846 : f32 = u_xlat44;
  let x_848 : f32 = u_xlat17.x;
  u_xlat44 = (x_846 * x_848);
  let x_850 : f32 = u_xlat44;
  u_xlat44 = (x_850 * 6.0f);
  let x_861 : vec4<f32> = u_xlat8;
  let x_863 : f32 = u_xlat44;
  let x_864 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_861.x, x_861.y, x_861.z), x_863);
  u_xlat8 = x_864;
  let x_866 : f32 = u_xlat8.w;
  u_xlat46 = (x_866 + -1.0f);
  let x_870 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_871 : f32 = u_xlat46;
  u_xlat46 = ((x_870 * x_871) + 1.0f);
  let x_874 : f32 = u_xlat46;
  u_xlat46 = log2(x_874);
  let x_876 : f32 = u_xlat46;
  let x_878 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_876 * x_878);
  let x_880 : f32 = u_xlat46;
  u_xlat46 = exp2(x_880);
  let x_882 : f32 = u_xlat46;
  let x_884 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_882 * x_884);
  let x_886 : vec4<f32> = u_xlat8;
  let x_888 : f32 = u_xlat46;
  let x_890 : vec3<f32> = (vec3<f32>(x_886.x, x_886.y, x_886.z) * vec3<f32>(x_888, x_888, x_888));
  let x_891 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_895 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb47 = (x_895 < 0.999989986f);
  let x_898 : bool = u_xlatb47;
  if (x_898) {
    let x_903 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb47 = (0.0f < x_903);
    let x_905 : bool = u_xlatb47;
    if (x_905) {
      let x_909 : vec4<f32> = u_xlat6;
      let x_911 : vec4<f32> = u_xlat6;
      u_xlat47 = dot(vec3<f32>(x_909.x, x_909.y, x_909.z), vec3<f32>(x_911.x, x_911.y, x_911.z));
      let x_914 : f32 = u_xlat47;
      u_xlat47 = inverseSqrt(x_914);
      let x_916 : f32 = u_xlat47;
      let x_918 : vec4<f32> = u_xlat6;
      u_xlat10 = (vec3<f32>(x_916, x_916, x_916) * vec3<f32>(x_918.x, x_918.y, x_918.z));
      let x_922 : vec3<f32> = u_xlat0;
      let x_926 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat11 = (-(x_922) + vec3<f32>(x_926.x, x_926.y, x_926.z));
      let x_929 : vec3<f32> = u_xlat11;
      let x_930 : vec3<f32> = u_xlat10;
      u_xlat11 = (x_929 / x_930);
      let x_933 : vec3<f32> = u_xlat0;
      let x_937 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat12 = (-(x_933) + vec3<f32>(x_937.x, x_937.y, x_937.z));
      let x_940 : vec3<f32> = u_xlat12;
      let x_941 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_940 / x_941);
      let x_944 : vec3<f32> = u_xlat10;
      let x_946 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_944.x, x_944.y, x_944.z, x_944.x));
      u_xlatb13 = vec3<bool>(x_946.x, x_946.y, x_946.z);
      let x_949 : vec3<f32> = u_xlat11;
      hlslcc_movcTemp_1 = x_949;
      let x_951 : bool = u_xlatb13.x;
      if (x_951) {
        let x_956 : f32 = u_xlat11.x;
        x_952 = x_956;
      } else {
        let x_959 : f32 = u_xlat12.x;
        x_952 = x_959;
      }
      let x_960 : f32 = x_952;
      hlslcc_movcTemp_1.x = x_960;
      let x_963 : bool = u_xlatb13.y;
      if (x_963) {
        let x_968 : f32 = u_xlat11.y;
        x_964 = x_968;
      } else {
        let x_971 : f32 = u_xlat12.y;
        x_964 = x_971;
      }
      let x_972 : f32 = x_964;
      hlslcc_movcTemp_1.y = x_972;
      let x_975 : bool = u_xlatb13.z;
      if (x_975) {
        let x_980 : f32 = u_xlat11.z;
        x_976 = x_980;
      } else {
        let x_983 : f32 = u_xlat12.z;
        x_976 = x_983;
      }
      let x_984 : f32 = x_976;
      hlslcc_movcTemp_1.z = x_984;
      let x_986 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat11 = x_986;
      let x_988 : f32 = u_xlat11.y;
      let x_990 : f32 = u_xlat11.x;
      u_xlat47 = min(x_988, x_990);
      let x_993 : f32 = u_xlat11.z;
      let x_994 : f32 = u_xlat47;
      u_xlat47 = min(x_993, x_994);
      let x_996 : vec3<f32> = u_xlat0;
      let x_998 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_996 + -(vec3<f32>(x_998.x, x_998.y, x_998.z)));
      let x_1002 : vec3<f32> = u_xlat10;
      let x_1003 : f32 = u_xlat47;
      let x_1006 : vec3<f32> = u_xlat0;
      let x_1007 : vec3<f32> = ((x_1002 * vec3<f32>(x_1003, x_1003, x_1003)) + x_1006);
      let x_1008 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
    }
    let x_1014 : vec4<f32> = u_xlat6;
    let x_1016 : f32 = u_xlat44;
    let x_1017 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_1014.x, x_1014.y, x_1014.z), x_1016);
    u_xlat6 = x_1017;
    let x_1019 : f32 = u_xlat6.w;
    u_xlat0.x = (x_1019 + -1.0f);
    let x_1024 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_1026 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_1024 * x_1026) + 1.0f);
    let x_1031 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_1031);
    let x_1035 : f32 = u_xlat0.x;
    let x_1037 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_1035 * x_1037);
    let x_1041 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_1041);
    let x_1045 : f32 = u_xlat0.x;
    let x_1047 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_1045 * x_1047);
    let x_1050 : vec4<f32> = u_xlat6;
    let x_1052 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_1050.x, x_1050.y, x_1050.z) * vec3<f32>(x_1052.x, x_1052.x, x_1052.x));
    let x_1055 : f32 = u_xlat46;
    let x_1057 : vec4<f32> = u_xlat8;
    let x_1060 : vec3<f32> = u_xlat0;
    let x_1062 : vec3<f32> = ((vec3<f32>(x_1055, x_1055, x_1055) * vec3<f32>(x_1057.x, x_1057.y, x_1057.z)) + -(x_1060));
    let x_1063 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
    let x_1066 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_1068 : vec4<f32> = u_xlat6;
    let x_1071 : vec3<f32> = u_xlat0;
    let x_1072 : vec3<f32> = ((vec3<f32>(x_1066.w, x_1066.w, x_1066.w) * vec3<f32>(x_1068.x, x_1068.y, x_1068.z)) + x_1071);
    let x_1073 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
  }
  let x_1075 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec3<f32>(x_1075.x, x_1075.y, x_1075.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1082 : f32 = x_37.x_Metallic;
  let x_1084 : f32 = x_37.x_Metallic;
  let x_1086 : f32 = x_37.x_Metallic;
  let x_1087 : vec3<f32> = vec3<f32>(x_1082, x_1084, x_1086);
  let x_1092 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1087.x, x_1087.y, x_1087.z) * x_1092) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1098 : f32 = x_37.x_Metallic;
  u_xlat44 = ((-(x_1098) * 0.959999979f) + 0.959999979f);
  let x_1103 : f32 = u_xlat44;
  let x_1105 : vec4<f32> = u_xlat4;
  let x_1107 : vec3<f32> = (vec3<f32>(x_1103, x_1103, x_1103) * vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
  let x_1108 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1110 : vec3<f32> = u_xlat1;
  let x_1111 : f32 = u_xlat42;
  let x_1115 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_1110 * vec3<f32>(x_1111, x_1111, x_1111)) + vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1118 : vec3<f32> = u_xlat1;
  let x_1119 : vec3<f32> = u_xlat1;
  u_xlat42 = dot(x_1118, x_1119);
  let x_1121 : f32 = u_xlat42;
  u_xlat42 = max(x_1121, 0.001f);
  let x_1124 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1124);
  let x_1126 : f32 = u_xlat42;
  let x_1128 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1126, x_1126, x_1126) * x_1128);
  let x_1130 : vec4<f32> = u_xlat5;
  let x_1132 : vec4<f32> = u_xlat2;
  u_xlat42 = dot(vec3<f32>(x_1130.x, x_1130.y, x_1130.z), vec3<f32>(x_1132.x, x_1132.y, x_1132.z));
  let x_1135 : vec4<f32> = u_xlat5;
  let x_1138 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1135.x, x_1135.y, x_1135.z), vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1143 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1143, 0.0f, 1.0f);
  let x_1147 : vec4<f32> = u_xlat5;
  let x_1149 : vec3<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_1147.x, x_1147.y, x_1147.z), x_1149);
  let x_1151 : f32 = u_xlat16;
  u_xlat16 = clamp(x_1151, 0.0f, 1.0f);
  let x_1154 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_1156 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1154.x, x_1154.y, x_1154.z), x_1156);
  let x_1160 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1160, 0.0f, 1.0f);
  let x_1165 : f32 = u_xlat1.x;
  let x_1167 : f32 = u_xlat1.x;
  u_xlat15 = (x_1165 * x_1167);
  let x_1169 : f32 = u_xlat15;
  let x_1171 : vec3<f32> = u_xlat17;
  u_xlat15 = dot(vec2<f32>(x_1169, x_1169), vec2<f32>(x_1171.x, x_1171.x));
  let x_1174 : f32 = u_xlat15;
  u_xlat15 = (x_1174 + -0.5f);
  let x_1179 : f32 = u_xlat2.x;
  u_xlat29 = (-(x_1179) + 1.0f);
  let x_1183 : f32 = u_xlat29;
  let x_1184 : f32 = u_xlat29;
  u_xlat30 = (x_1183 * x_1184);
  let x_1186 : f32 = u_xlat30;
  let x_1187 : f32 = u_xlat30;
  u_xlat30 = (x_1186 * x_1187);
  let x_1189 : f32 = u_xlat29;
  let x_1190 : f32 = u_xlat30;
  u_xlat29 = (x_1189 * x_1190);
  let x_1192 : f32 = u_xlat15;
  let x_1193 : f32 = u_xlat29;
  u_xlat29 = ((x_1192 * x_1193) + 1.0f);
  let x_1196 : f32 = u_xlat42;
  u_xlat30 = (-(abs(x_1196)) + 1.0f);
  let x_1200 : f32 = u_xlat30;
  let x_1201 : f32 = u_xlat30;
  u_xlat46 = (x_1200 * x_1201);
  let x_1203 : f32 = u_xlat46;
  let x_1204 : f32 = u_xlat46;
  u_xlat46 = (x_1203 * x_1204);
  let x_1206 : f32 = u_xlat30;
  let x_1207 : f32 = u_xlat46;
  u_xlat30 = (x_1206 * x_1207);
  let x_1209 : f32 = u_xlat15;
  let x_1210 : f32 = u_xlat30;
  u_xlat15 = ((x_1209 * x_1210) + 1.0f);
  let x_1213 : f32 = u_xlat15;
  let x_1214 : f32 = u_xlat29;
  u_xlat15 = (x_1213 * x_1214);
  let x_1217 : f32 = u_xlat2.x;
  let x_1218 : f32 = u_xlat15;
  u_xlat15 = (x_1217 * x_1218);
  let x_1221 : f32 = u_xlat17.x;
  let x_1223 : f32 = u_xlat17.x;
  u_xlat29 = (x_1221 * x_1223);
  let x_1225 : f32 = u_xlat29;
  u_xlat29 = max(x_1225, 0.002f);
  let x_1228 : f32 = u_xlat29;
  u_xlat17.x = (-(x_1228) + 1.0f);
  let x_1232 : f32 = u_xlat42;
  let x_1235 : f32 = u_xlat17.x;
  let x_1237 : f32 = u_xlat29;
  u_xlat46 = ((abs(x_1232) * x_1235) + x_1237);
  let x_1240 : f32 = u_xlat2.x;
  let x_1242 : f32 = u_xlat17.x;
  let x_1244 : f32 = u_xlat29;
  u_xlat17.x = ((x_1240 * x_1242) + x_1244);
  let x_1247 : f32 = u_xlat42;
  let x_1250 : f32 = u_xlat17.x;
  u_xlat42 = (abs(x_1247) * x_1250);
  let x_1253 : f32 = u_xlat2.x;
  let x_1254 : f32 = u_xlat46;
  let x_1256 : f32 = u_xlat42;
  u_xlat42 = ((x_1253 * x_1254) + x_1256);
  let x_1258 : f32 = u_xlat42;
  u_xlat42 = (x_1258 + 0.00001f);
  let x_1261 : f32 = u_xlat42;
  u_xlat42 = (0.5f / x_1261);
  let x_1263 : f32 = u_xlat29;
  let x_1264 : f32 = u_xlat29;
  u_xlat17.x = (x_1263 * x_1264);
  let x_1267 : f32 = u_xlat16;
  let x_1269 : f32 = u_xlat17.x;
  let x_1271 : f32 = u_xlat16;
  u_xlat46 = ((x_1267 * x_1269) + -(x_1271));
  let x_1274 : f32 = u_xlat46;
  let x_1275 : f32 = u_xlat16;
  u_xlat16 = ((x_1274 * x_1275) + 1.0f);
  let x_1279 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1279 * 0.318309873f);
  let x_1283 : f32 = u_xlat16;
  let x_1284 : f32 = u_xlat16;
  u_xlat16 = ((x_1283 * x_1284) + 0.0000001f);
  let x_1289 : f32 = u_xlat17.x;
  let x_1290 : f32 = u_xlat16;
  u_xlat16 = (x_1289 / x_1290);
  let x_1292 : f32 = u_xlat42;
  let x_1293 : f32 = u_xlat16;
  u_xlat42 = (x_1292 * x_1293);
  let x_1296 : f32 = u_xlat2.x;
  let x_1297 : f32 = u_xlat42;
  u_xlat42 = (x_1296 * x_1297);
  let x_1299 : f32 = u_xlat42;
  u_xlat42 = (x_1299 * 3.141592741f);
  let x_1302 : f32 = u_xlat42;
  u_xlat42 = max(x_1302, 0.0f);
  let x_1304 : f32 = u_xlat29;
  let x_1305 : f32 = u_xlat29;
  u_xlat29 = ((x_1304 * x_1305) + 1.0f);
  let x_1308 : f32 = u_xlat29;
  u_xlat29 = (1.0f / x_1308);
  let x_1310 : vec3<f32> = u_xlat0;
  let x_1311 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1310, x_1311);
  let x_1316 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1316 == 0.0f));
  let x_1318 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1318);
  let x_1321 : f32 = u_xlat42;
  let x_1323 : f32 = u_xlat2.x;
  u_xlat42 = (x_1321 * x_1323);
  let x_1325 : f32 = u_xlat43;
  let x_1327 : f32 = x_37.x_Glossiness;
  let x_1329 : f32 = u_xlat44;
  u_xlat43 = ((x_1325 * x_1327) + -(x_1329));
  let x_1332 : f32 = u_xlat43;
  u_xlat43 = (x_1332 + 1.0f);
  let x_1334 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1334, 0.0f, 1.0f);
  let x_1336 : vec4<f32> = u_xlat3;
  let x_1338 : f32 = u_xlat15;
  let x_1341 : vec4<f32> = u_xlat7;
  let x_1343 : vec3<f32> = ((vec3<f32>(x_1336.x, x_1336.z, x_1336.w) * vec3<f32>(x_1338, x_1338, x_1338)) + vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
  let x_1344 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1343.x, x_1343.y, x_1344.z, x_1343.z);
  let x_1346 : vec4<f32> = u_xlat3;
  let x_1348 : f32 = u_xlat42;
  let x_1350 : vec3<f32> = (vec3<f32>(x_1346.x, x_1346.z, x_1346.w) * vec3<f32>(x_1348, x_1348, x_1348));
  let x_1351 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1350.x, x_1350.y, x_1350.z, x_1351.w);
  let x_1354 : f32 = u_xlat1.x;
  u_xlat42 = (-(x_1354) + 1.0f);
  let x_1357 : f32 = u_xlat42;
  let x_1358 : f32 = u_xlat42;
  u_xlat1.x = (x_1357 * x_1358);
  let x_1362 : f32 = u_xlat1.x;
  let x_1364 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1362 * x_1364);
  let x_1367 : f32 = u_xlat42;
  let x_1369 : f32 = u_xlat1.x;
  u_xlat42 = (x_1367 * x_1369);
  let x_1371 : vec3<f32> = u_xlat0;
  let x_1374 : vec3<f32> = (-(x_1371) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1375 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1374.x, x_1374.y, x_1374.z, x_1375.w);
  let x_1377 : vec4<f32> = u_xlat5;
  let x_1379 : f32 = u_xlat42;
  let x_1382 : vec3<f32> = u_xlat0;
  let x_1383 : vec3<f32> = ((vec3<f32>(x_1377.x, x_1377.y, x_1377.z) * vec3<f32>(x_1379, x_1379, x_1379)) + x_1382);
  let x_1384 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
  let x_1386 : vec4<f32> = u_xlat3;
  let x_1388 : vec4<f32> = u_xlat5;
  let x_1390 : vec3<f32> = (vec3<f32>(x_1386.x, x_1386.y, x_1386.z) * vec3<f32>(x_1388.x, x_1388.y, x_1388.z));
  let x_1391 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
  let x_1393 : vec4<f32> = u_xlat4;
  let x_1395 : vec4<f32> = u_xlat2;
  let x_1398 : vec4<f32> = u_xlat3;
  let x_1400 : vec3<f32> = ((vec3<f32>(x_1393.x, x_1393.y, x_1393.z) * vec3<f32>(x_1395.x, x_1395.y, x_1395.w)) + vec3<f32>(x_1398.x, x_1398.y, x_1398.z));
  let x_1401 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1400.x, x_1400.y, x_1401.z, x_1400.z);
  let x_1403 : vec4<f32> = u_xlat9;
  let x_1405 : f32 = u_xlat29;
  u_xlat1 = (vec3<f32>(x_1403.x, x_1403.y, x_1403.z) * vec3<f32>(x_1405, x_1405, x_1405));
  let x_1408 : vec3<f32> = u_xlat0;
  let x_1410 : f32 = u_xlat43;
  let x_1412 : vec3<f32> = (-(x_1408) + vec3<f32>(x_1410, x_1410, x_1410));
  let x_1413 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
  let x_1415 : f32 = u_xlat30;
  let x_1417 : vec4<f32> = u_xlat3;
  let x_1420 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1415, x_1415, x_1415) * vec3<f32>(x_1417.x, x_1417.y, x_1417.z)) + x_1420);
  let x_1422 : vec3<f32> = u_xlat1;
  let x_1423 : vec3<f32> = u_xlat0;
  let x_1425 : vec4<f32> = u_xlat2;
  let x_1427 : vec3<f32> = ((x_1422 * x_1423) + vec3<f32>(x_1425.x, x_1425.y, x_1425.w));
  let x_1428 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1427.x, x_1427.y, x_1427.z, x_1428.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(5) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

