struct PGlobals {
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_Cutoff2 : f32,
  x_EdgeSizeBot : f32,
  x_EdgeSizeTop : f32,
  @size(12)
  padding_1 : u32,
  x_Color : vec4<f32>,
  x_EdgeColor1 : vec4<f32>,
  x_EdgeColor2 : vec4<f32>,
  x_bounds : vec4<f32>,
}

var<private> u_xlat0 : vec2<f32>;

@group(0) @binding(1) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicSmooth : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_56 : PGlobals;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat24 : f32;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(8) var sampler_Noise : sampler;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat10 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(9) var sampler_Normal : sampler;

var<private> SV_Target1 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatb8 : bool;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_508 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, x_22);
  u_xlat0 = vec2<f32>(x_24.x, x_24.w);
  let x_35 : f32 = vs_TEXCOORD1.w;
  u_xlat9.x = x_35;
  let x_41 : f32 = vs_TEXCOORD2.w;
  u_xlat9.y = x_41;
  let x_46 : f32 = vs_TEXCOORD3.w;
  u_xlat9.z = x_46;
  let x_51 : vec3<f32> = u_xlat9;
  let x_61 : vec4<f32> = x_56.unity_ObjectToWorld[3i];
  u_xlat2 = (vec4<f32>(x_51.z, x_51.y, x_51.x, x_51.y) + -(vec4<f32>(x_61.z, x_61.y, x_61.x, x_61.y)));
  let x_66 : vec4<f32> = u_xlat2;
  let x_71 : vec3<f32> = (vec3<f32>(x_66.w, x_66.x, x_66.z) * vec3<f32>(6.0f, 0.200000003f, 0.200000003f));
  let x_72 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_71.z);
  let x_78 : f32 = x_56.x_Cutoff;
  let x_80 : f32 = x_56.x_Cutoff;
  u_xlat16 = (x_78 + x_80);
  let x_84 : f32 = u_xlat2.w;
  let x_87 : f32 = u_xlat16;
  u_xlat4.x = ((x_84 * 2.0f) + x_87);
  let x_91 : f32 = u_xlat2.y;
  let x_95 : f32 = x_56.x_Cutoff;
  u_xlat4.z = ((x_91 * 4.0f) + x_95);
  let x_100 : f32 = x_56.x_bounds.y;
  u_xlat16 = (x_100 + 0.200000003f);
  let x_102 : vec4<f32> = u_xlat3;
  let x_103 : vec2<f32> = vec2<f32>(x_102.y, x_102.w);
  let x_104 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_104.x, x_103.x, x_104.z, x_103.y);
  let x_112 : vec4<f32> = u_xlat4;
  let x_114 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_112.x, x_112.y));
  u_xlat24 = x_114.x;
  let x_120 : vec4<f32> = u_xlat4;
  let x_122 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_120.z, x_120.w));
  u_xlat1.x = x_122.x;
  let x_125 : f32 = u_xlat24;
  let x_127 : vec4<f32> = u_xlat1;
  u_xlat24 = dot(vec2<f32>(x_125, x_125), vec2<f32>(x_127.x, x_127.x));
  u_xlat3.y = 0.0f;
  let x_135 : vec4<f32> = u_xlat3;
  let x_137 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_135.x, x_135.y));
  u_xlat1.x = x_137.x;
  let x_140 : f32 = u_xlat16;
  u_xlat2.x = (x_140 * 0.5f);
  let x_145 : f32 = x_56.x_Cutoff;
  let x_146 : f32 = u_xlat16;
  let x_149 : f32 = u_xlat2.x;
  u_xlat16 = ((x_145 * x_146) + -(x_149));
  let x_156 : f32 = u_xlat2.w;
  let x_157 : f32 = u_xlat16;
  u_xlatb2 = (x_156 >= x_157);
  let x_160 : bool = u_xlatb2;
  u_xlat10 = select(0.0f, 1.0f, x_160);
  let x_164 : f32 = u_xlat16;
  let x_167 : f32 = x_56.x_EdgeSizeBot;
  u_xlat18 = (x_164 + -(x_167));
  let x_170 : f32 = u_xlat16;
  let x_171 : f32 = u_xlat18;
  u_xlat3.x = (x_170 + -(x_171));
  let x_175 : f32 = u_xlat18;
  let x_178 : f32 = u_xlat2.w;
  u_xlat18 = (-(x_175) + x_178);
  let x_181 : f32 = u_xlat3.x;
  u_xlat3.x = (1.0f / x_181);
  let x_184 : f32 = u_xlat18;
  let x_186 : f32 = u_xlat3.x;
  u_xlat18 = (x_184 * x_186);
  let x_188 : f32 = u_xlat18;
  u_xlat18 = clamp(x_188, 0.0f, 1.0f);
  let x_190 : f32 = u_xlat18;
  u_xlat3.x = ((x_190 * -2.0f) + 3.0f);
  let x_196 : f32 = u_xlat18;
  let x_197 : f32 = u_xlat18;
  u_xlat18 = (x_196 * x_197);
  let x_200 : f32 = u_xlat18;
  let x_202 : f32 = u_xlat3.x;
  u_xlat11.x = (x_200 * x_202);
  let x_206 : f32 = u_xlat16;
  let x_209 : f32 = x_56.x_EdgeSizeTop;
  u_xlat19 = (x_206 + x_209);
  let x_211 : f32 = u_xlat16;
  let x_212 : f32 = u_xlat19;
  u_xlat16 = (x_211 + -(x_212));
  let x_217 : f32 = u_xlat2.w;
  let x_218 : f32 = u_xlat19;
  u_xlat26 = (x_217 + -(x_218));
  let x_221 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_221);
  let x_223 : f32 = u_xlat16;
  let x_224 : f32 = u_xlat26;
  u_xlat16 = (x_223 * x_224);
  let x_226 : f32 = u_xlat16;
  u_xlat16 = clamp(x_226, 0.0f, 1.0f);
  let x_228 : f32 = u_xlat16;
  u_xlat26 = ((x_228 * -2.0f) + 3.0f);
  let x_231 : f32 = u_xlat16;
  let x_232 : f32 = u_xlat16;
  u_xlat16 = (x_231 * x_232);
  let x_234 : f32 = u_xlat16;
  let x_235 : f32 = u_xlat26;
  u_xlat16 = (x_234 * x_235);
  let x_237 : vec3<f32> = u_xlat11;
  let x_241 : vec4<f32> = x_56.x_EdgeColor1;
  u_xlat11 = (vec3<f32>(x_237.x, x_237.x, x_237.x) * vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : bool = u_xlatb2;
  u_xlat2.x = select(1.0f, 0.0f, x_244);
  let x_247 : vec4<f32> = u_xlat2;
  let x_249 : vec3<f32> = u_xlat11;
  u_xlat11 = (vec3<f32>(x_247.x, x_247.x, x_247.x) * x_249);
  let x_252 : vec4<f32> = x_56.x_EdgeColor1;
  let x_256 : vec4<f32> = x_56.x_EdgeColor2;
  let x_259 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) + -(vec3<f32>(x_256.x, x_256.y, x_256.z)));
  let x_260 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : f32 = u_xlat16;
  let x_264 : vec4<f32> = u_xlat4;
  let x_268 : vec4<f32> = x_56.x_EdgeColor2;
  let x_270 : vec3<f32> = ((vec3<f32>(x_262, x_262, x_262) * vec3<f32>(x_264.x, x_264.y, x_264.z)) + vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_279 : vec2<f32> = vs_TEXCOORD0;
  let x_280 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_279);
  u_xlat5 = vec3<f32>(x_280.x, x_280.y, x_280.z);
  let x_283 : vec3<f32> = u_xlat5;
  let x_286 : vec4<f32> = x_56.x_Color;
  u_xlat6 = (x_283 * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_290 : vec3<f32> = u_xlat11;
  let x_292 : vec3<f32> = (x_290 * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_293 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec3<f32> = u_xlat11;
  let x_296 : vec4<f32> = u_xlat1;
  let x_299 : vec4<f32> = u_xlat7;
  u_xlat11 = ((x_295 * vec3<f32>(x_296.x, x_296.x, x_296.x)) + vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat4;
  let x_304 : f32 = u_xlat10;
  let x_307 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_304, x_304, x_304)) + x_307);
  let x_314 : vec2<f32> = vs_TEXCOORD0;
  let x_315 : vec4<f32> = textureSample(x_Normal, sampler_Normal, x_314);
  let x_316 : vec3<f32> = vec3<f32>(x_315.x, x_315.y, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_320 : f32 = u_xlat4.z;
  let x_322 : f32 = u_xlat4.x;
  u_xlat4.x = (x_320 * x_322);
  let x_325 : vec4<f32> = u_xlat4;
  let x_331 : vec2<f32> = ((vec2<f32>(x_325.x, x_325.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_331.x, x_331.y, x_332.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat4;
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec2<f32>(x_334.x, x_334.y), vec2<f32>(x_336.x, x_336.y));
  let x_341 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_341, 1.0f);
  let x_345 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_345) + 1.0f);
  let x_350 : f32 = u_xlat1.x;
  u_xlat4.z = sqrt(x_350);
  let x_353 : vec2<f32> = u_xlat0;
  let x_356 : f32 = x_56.x_Metallic;
  let x_359 : f32 = x_56.x_Glossiness;
  u_xlat0 = (x_353 * vec2<f32>(x_356, x_359));
  let x_363 : f32 = u_xlat3.x;
  let x_365 : f32 = u_xlat18;
  u_xlat1.x = ((-(x_363) * x_365) + 1.0f);
  let x_370 : f32 = u_xlat0.x;
  let x_372 : f32 = u_xlat1.x;
  u_xlat0.x = (x_370 * x_372);
  let x_378 : f32 = u_xlat0.y;
  let x_380 : f32 = u_xlat1.x;
  SV_Target1.w = (x_378 * x_380);
  let x_385 : f32 = u_xlat24;
  let x_386 : f32 = u_xlat16;
  let x_389 : f32 = u_xlat2.x;
  u_xlat8.x = ((x_385 * x_386) + x_389);
  let x_393 : f32 = u_xlat8.x;
  let x_395 : f32 = x_56.x_Cutoff;
  u_xlat8.x = (x_393 + -(x_395));
  let x_400 : f32 = u_xlat8.x;
  let x_403 : f32 = x_56.x_Cutoff2;
  u_xlat8.x = (x_400 + -(x_403));
  let x_409 : f32 = u_xlat8.x;
  u_xlatb8 = (x_409 < 0.0f);
  let x_411 : bool = u_xlatb8;
  if (((select(0i, 1i, x_411) * -1i) != 0i)) {
    discard;
  }
  let x_421 : vec4<f32> = vs_TEXCOORD1;
  let x_423 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_421.x, x_421.y, x_421.z), vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_427 : vec4<f32> = vs_TEXCOORD2;
  let x_429 : vec4<f32> = u_xlat4;
  u_xlat2.y = dot(vec3<f32>(x_427.x, x_427.y, x_427.z), vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_433 : vec4<f32> = vs_TEXCOORD3;
  let x_435 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_433.x, x_433.y, x_433.z), vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_439 : vec4<f32> = u_xlat2;
  let x_441 : vec4<f32> = u_xlat2;
  u_xlat8.x = dot(vec3<f32>(x_439.x, x_439.y, x_439.z), vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_446 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_446);
  let x_449 : vec3<f32> = u_xlat8;
  let x_451 : vec4<f32> = u_xlat2;
  let x_453 : vec3<f32> = (vec3<f32>(x_449.x, x_449.x, x_449.x) * vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_458 : f32 = x_56.unity_ProbeVolumeParams.x;
  u_xlatb8 = (x_458 == 1.0f);
  let x_460 : bool = u_xlatb8;
  if (x_460) {
    let x_464 : f32 = x_56.unity_ProbeVolumeParams.y;
    u_xlatb8 = (x_464 == 1.0f);
    let x_466 : vec4<f32> = vs_TEXCOORD2;
    let x_470 : vec4<f32> = x_56.unity_ProbeVolumeWorldToObject[1i];
    let x_472 : vec3<f32> = (vec3<f32>(x_466.w, x_466.w, x_466.w) * vec3<f32>(x_470.x, x_470.y, x_470.z));
    let x_473 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
    let x_476 : vec4<f32> = x_56.unity_ProbeVolumeWorldToObject[0i];
    let x_478 : vec4<f32> = vs_TEXCOORD1;
    let x_481 : vec4<f32> = u_xlat4;
    let x_483 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(x_478.w, x_478.w, x_478.w)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
    let x_484 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
    let x_488 : vec4<f32> = x_56.unity_ProbeVolumeWorldToObject[2i];
    let x_490 : vec4<f32> = vs_TEXCOORD3;
    let x_493 : vec4<f32> = u_xlat4;
    let x_495 : vec3<f32> = ((vec3<f32>(x_488.x, x_488.y, x_488.z) * vec3<f32>(x_490.w, x_490.w, x_490.w)) + vec3<f32>(x_493.x, x_493.y, x_493.z));
    let x_496 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
    let x_498 : vec4<f32> = u_xlat4;
    let x_501 : vec4<f32> = x_56.unity_ProbeVolumeWorldToObject[3i];
    let x_503 : vec3<f32> = (vec3<f32>(x_498.x, x_498.y, x_498.z) + vec3<f32>(x_501.x, x_501.y, x_501.z));
    let x_504 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
    let x_506 : bool = u_xlatb8;
    if (x_506) {
      let x_511 : vec4<f32> = u_xlat4;
      x_508 = vec3<f32>(x_511.x, x_511.y, x_511.z);
    } else {
      let x_514 : vec3<f32> = u_xlat9;
      x_508 = x_514;
    }
    let x_515 : vec3<f32> = x_508;
    u_xlat8 = x_515;
    let x_516 : vec3<f32> = u_xlat8;
    let x_520 : vec3<f32> = x_56.unity_ProbeVolumeMin;
    u_xlat8 = (x_516 + -(x_520));
    let x_523 : vec3<f32> = u_xlat8;
    let x_526 : vec3<f32> = x_56.unity_ProbeVolumeSizeInv;
    let x_527 : vec3<f32> = (x_523 * x_526);
    let x_528 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_528.x, x_527.x, x_527.y, x_527.z);
    let x_531 : f32 = u_xlat1.y;
    u_xlat8.x = (x_531 * 0.25f);
    let x_536 : f32 = x_56.unity_ProbeVolumeParams.z;
    u_xlat16 = (x_536 * 0.5f);
    let x_539 : f32 = x_56.unity_ProbeVolumeParams.z;
    u_xlat24 = ((-(x_539) * 0.5f) + 0.25f);
    let x_543 : f32 = u_xlat16;
    let x_545 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_543, x_545);
    let x_548 : f32 = u_xlat24;
    let x_550 : f32 = u_xlat8.x;
    u_xlat1.x = min(x_548, x_550);
    let x_561 : vec4<f32> = u_xlat1;
    let x_563 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_561.x, x_561.z, x_561.w));
    u_xlat4 = x_563;
    let x_564 : vec4<f32> = u_xlat1;
    u_xlat8 = (vec3<f32>(x_564.x, x_564.z, x_564.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_571 : vec3<f32> = u_xlat8;
    let x_572 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, x_571);
    u_xlat7 = x_572;
    let x_573 : vec4<f32> = u_xlat1;
    u_xlat8 = (vec3<f32>(x_573.x, x_573.z, x_573.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_580 : vec3<f32> = u_xlat8;
    let x_581 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, x_580);
    u_xlat1 = x_581;
    u_xlat2.w = 1.0f;
    let x_583 : vec4<f32> = u_xlat4;
    let x_584 : vec4<f32> = u_xlat2;
    u_xlat4.x = dot(x_583, x_584);
    let x_587 : vec4<f32> = u_xlat7;
    let x_588 : vec4<f32> = u_xlat2;
    u_xlat4.y = dot(x_587, x_588);
    let x_591 : vec4<f32> = u_xlat1;
    let x_592 : vec4<f32> = u_xlat2;
    u_xlat4.z = dot(x_591, x_592);
  } else {
    u_xlat2.w = 1.0f;
    let x_598 : vec4<f32> = x_56.unity_SHAr;
    let x_599 : vec4<f32> = u_xlat2;
    u_xlat4.x = dot(x_598, x_599);
    let x_603 : vec4<f32> = x_56.unity_SHAg;
    let x_604 : vec4<f32> = u_xlat2;
    u_xlat4.y = dot(x_603, x_604);
    let x_608 : vec4<f32> = x_56.unity_SHAb;
    let x_609 : vec4<f32> = u_xlat2;
    u_xlat4.z = dot(x_608, x_609);
  }
  let x_612 : vec4<f32> = u_xlat4;
  let x_616 : vec3<f32> = vs_TEXCOORD6;
  u_xlat8 = (vec3<f32>(x_612.x, x_612.y, x_612.z) + x_616);
  let x_618 : vec3<f32> = u_xlat8;
  u_xlat8 = max(x_618, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_621 : vec3<f32> = u_xlat5;
  let x_623 : vec4<f32> = x_56.x_Color;
  let x_628 : vec3<f32> = ((x_621 * vec3<f32>(x_623.x, x_623.y, x_623.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_629 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec2<f32> = u_xlat0;
  let x_633 : vec4<f32> = u_xlat1;
  let x_638 : vec3<f32> = ((vec3<f32>(x_631.x, x_631.x, x_631.x) * vec3<f32>(x_633.x, x_633.y, x_633.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_639 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_642 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_642) * 0.959999979f) + 0.959999979f);
  let x_648 : vec2<f32> = u_xlat0;
  let x_650 : vec3<f32> = u_xlat6;
  let x_651 : vec3<f32> = (vec3<f32>(x_648.x, x_648.x, x_648.x) * x_650);
  let x_652 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_655 : vec4<f32> = u_xlat2;
  let x_658 : vec3<f32> = ((vec3<f32>(x_655.x, x_655.y, x_655.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_659 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_662 : vec4<f32> = u_xlat1;
  let x_664 : vec3<f32> = u_xlat8;
  let x_666 : vec3<f32> = u_xlat11;
  let x_667 : vec3<f32> = ((vec3<f32>(x_662.x, x_662.y, x_662.z) * x_664) + x_666);
  let x_668 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_671 : vec4<f32> = u_xlat1;
  let x_672 : vec3<f32> = vec3<f32>(x_671.x, x_671.y, x_671.z);
  let x_673 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  SV_Target0.w = 1.0f;
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target2, SV_Target3, SV_Target0);
}

