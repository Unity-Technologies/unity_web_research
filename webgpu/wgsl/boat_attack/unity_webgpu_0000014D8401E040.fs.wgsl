diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
}

alias Arr = array<mat4x4<f32>, 5u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlatb45 : bool;

@group(1) @binding(1) var<uniform> x_97 : LightShadows;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat18 : vec2<f32>;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlatb16 : bool;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_23, x_33);
  u_xlat0 = x_34;
  let x_40 : vec2<f32> = vs_TEXCOORD1;
  let x_42 : f32 = x_26.x_GlobalMipBias.x;
  let x_43 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_40, x_42);
  let x_45 : vec3<f32> = vec3<f32>(x_43.x, x_43.y, x_43.z);
  let x_46 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_45.x, x_45.y, x_45.z, x_46.w);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec3<f32> = (vec3<f32>(x_48.x, x_48.y, x_48.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_57 : vec3<f32> = vs_TEXCOORD5;
  let x_58 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_57, vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_64 : f32 = u_xlat0.x;
  u_xlat0.x = (x_64 + 0.5f);
  let x_68 : vec4<f32> = u_xlat0;
  let x_70 : vec4<f32> = u_xlat1;
  let x_72 : vec3<f32> = (vec3<f32>(x_68.x, x_68.x, x_68.x) * vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_72.x, x_72.y, x_72.z, x_73.w);
  let x_78 : f32 = u_xlat0.w;
  u_xlat45 = max(x_78, 0.00009999999747378752f);
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : f32 = u_xlat45;
  let x_85 : vec3<f32> = (vec3<f32>(x_81.x, x_81.y, x_81.z) / vec3<f32>(x_83, x_83, x_83));
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_101 : f32 = x_97.x_MainLightShadowParams.y;
  u_xlatb45 = (0.0f < x_101);
  let x_103 : bool = u_xlatb45;
  if (x_103) {
    let x_107 : f32 = x_97.x_MainLightShadowParams.y;
    u_xlatb45 = (x_107 == 1.0f);
    let x_110 : bool = u_xlatb45;
    if (x_110) {
      let x_115 : vec4<f32> = vs_TEXCOORD4;
      let x_120 : vec4<f32> = x_97.x_MainLightShadowOffset0;
      u_xlat1 = (vec4<f32>(x_115.x, x_115.y, x_115.x, x_115.y) + x_120);
      let x_124 : vec4<f32> = u_xlat1;
      let x_125 : vec2<f32> = vec2<f32>(x_124.x, x_124.y);
      let x_129 : f32 = vs_TEXCOORD4.z;
      txVec0 = vec3<f32>(x_125.x, x_125.y, x_129);
      let x_142 : vec3<f32> = txVec0;
      let x_144 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_142.xy, x_142.z);
      u_xlat2.x = x_144;
      let x_147 : vec4<f32> = u_xlat1;
      let x_148 : vec2<f32> = vec2<f32>(x_147.z, x_147.w);
      let x_150 : f32 = vs_TEXCOORD4.z;
      txVec1 = vec3<f32>(x_148.x, x_148.y, x_150);
      let x_157 : vec3<f32> = txVec1;
      let x_159 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_157.xy, x_157.z);
      u_xlat2.y = x_159;
      let x_161 : vec4<f32> = vs_TEXCOORD4;
      let x_165 : vec4<f32> = x_97.x_MainLightShadowOffset1;
      u_xlat1 = (vec4<f32>(x_161.x, x_161.y, x_161.x, x_161.y) + x_165);
      let x_168 : vec4<f32> = u_xlat1;
      let x_169 : vec2<f32> = vec2<f32>(x_168.x, x_168.y);
      let x_171 : f32 = vs_TEXCOORD4.z;
      txVec2 = vec3<f32>(x_169.x, x_169.y, x_171);
      let x_178 : vec3<f32> = txVec2;
      let x_180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_178.xy, x_178.z);
      u_xlat2.z = x_180;
      let x_183 : vec4<f32> = u_xlat1;
      let x_184 : vec2<f32> = vec2<f32>(x_183.z, x_183.w);
      let x_186 : f32 = vs_TEXCOORD4.z;
      txVec3 = vec3<f32>(x_184.x, x_184.y, x_186);
      let x_193 : vec3<f32> = txVec3;
      let x_195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_193.xy, x_193.z);
      u_xlat2.w = x_195;
      let x_197 : vec4<f32> = u_xlat2;
      u_xlat45 = dot(x_197, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_204 : f32 = x_97.x_MainLightShadowParams.y;
      u_xlatb1 = (x_204 == 2.0f);
      let x_207 : bool = u_xlatb1;
      if (x_207) {
        let x_210 : vec4<f32> = vs_TEXCOORD4;
        let x_214 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_218 : vec2<f32> = ((vec2<f32>(x_210.x, x_210.y) * vec2<f32>(x_214.z, x_214.w)) + vec2<f32>(0.5f, 0.5f));
        let x_219 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_218.x, x_218.y, x_219.z, x_219.w);
        let x_221 : vec4<f32> = u_xlat1;
        let x_223 : vec2<f32> = floor(vec2<f32>(x_221.x, x_221.y));
        let x_224 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_223.x, x_223.y, x_224.z, x_224.w);
        let x_228 : vec4<f32> = vs_TEXCOORD4;
        let x_231 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_234 : vec4<f32> = u_xlat1;
        u_xlat31 = ((vec2<f32>(x_228.x, x_228.y) * vec2<f32>(x_231.z, x_231.w)) + -(vec2<f32>(x_234.x, x_234.y)));
        let x_238 : vec2<f32> = u_xlat31;
        u_xlat2 = (vec4<f32>(x_238.x, x_238.x, x_238.y, x_238.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_243 : vec4<f32> = u_xlat2;
        let x_245 : vec4<f32> = u_xlat2;
        u_xlat3 = (vec4<f32>(x_243.x, x_243.x, x_243.z, x_243.z) * vec4<f32>(x_245.x, x_245.x, x_245.z, x_245.z));
        let x_248 : vec4<f32> = u_xlat3;
        let x_252 : vec2<f32> = (vec2<f32>(x_248.y, x_248.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_253 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_252.x, x_253.y, x_252.y, x_253.w);
        let x_255 : vec4<f32> = u_xlat3;
        let x_258 : vec2<f32> = u_xlat31;
        let x_260 : vec2<f32> = ((vec2<f32>(x_255.x, x_255.z) * vec2<f32>(0.5f, 0.5f)) + -(x_258));
        let x_261 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_260.x, x_260.y, x_261.z, x_261.w);
        let x_264 : vec2<f32> = u_xlat31;
        u_xlat33 = (-(x_264) + vec2<f32>(1.0f, 1.0f));
        let x_269 : vec2<f32> = u_xlat31;
        let x_271 : vec2<f32> = min(x_269, vec2<f32>(0.0f, 0.0f));
        let x_272 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_271.x, x_271.y, x_272.z, x_272.w);
        let x_274 : vec4<f32> = u_xlat4;
        let x_277 : vec4<f32> = u_xlat4;
        let x_280 : vec2<f32> = u_xlat33;
        let x_281 : vec2<f32> = ((-(vec2<f32>(x_274.x, x_274.y)) * vec2<f32>(x_277.x, x_277.y)) + x_280);
        let x_282 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_281.x, x_281.y, x_282.z, x_282.w);
        let x_284 : vec2<f32> = u_xlat31;
        u_xlat31 = max(x_284, vec2<f32>(0.0f, 0.0f));
        let x_286 : vec2<f32> = u_xlat31;
        let x_288 : vec2<f32> = u_xlat31;
        let x_290 : vec4<f32> = u_xlat2;
        u_xlat31 = ((-(x_286) * x_288) + vec2<f32>(x_290.y, x_290.w));
        let x_293 : vec4<f32> = u_xlat4;
        let x_295 : vec2<f32> = (vec2<f32>(x_293.x, x_293.y) + vec2<f32>(1.0f, 1.0f));
        let x_296 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_295.x, x_295.y, x_296.z, x_296.w);
        let x_298 : vec2<f32> = u_xlat31;
        u_xlat31 = (x_298 + vec2<f32>(1.0f, 1.0f));
        let x_301 : vec4<f32> = u_xlat3;
        let x_305 : vec2<f32> = (vec2<f32>(x_301.x, x_301.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_306 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_305.x, x_305.y, x_306.z, x_306.w);
        let x_308 : vec2<f32> = u_xlat33;
        let x_309 : vec2<f32> = (x_308 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_310 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_309.x, x_309.y, x_310.z, x_310.w);
        let x_312 : vec4<f32> = u_xlat4;
        let x_314 : vec2<f32> = (vec2<f32>(x_312.x, x_312.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_315 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_314.x, x_314.y, x_315.z, x_315.w);
        let x_318 : vec2<f32> = u_xlat31;
        let x_319 : vec2<f32> = (x_318 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_320 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_320.z, x_320.w);
        let x_322 : vec4<f32> = u_xlat2;
        u_xlat31 = (vec2<f32>(x_322.y, x_322.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_326 : f32 = u_xlat4.x;
        u_xlat5.z = x_326;
        let x_329 : f32 = u_xlat31.x;
        u_xlat5.w = x_329;
        let x_332 : f32 = u_xlat6.x;
        u_xlat3.z = x_332;
        let x_335 : f32 = u_xlat2.x;
        u_xlat3.w = x_335;
        let x_338 : vec4<f32> = u_xlat3;
        let x_340 : vec4<f32> = u_xlat5;
        u_xlat7 = (vec4<f32>(x_338.z, x_338.w, x_338.x, x_338.z) + vec4<f32>(x_340.z, x_340.w, x_340.x, x_340.z));
        let x_344 : f32 = u_xlat5.y;
        u_xlat4.z = x_344;
        let x_347 : f32 = u_xlat31.y;
        u_xlat4.w = x_347;
        let x_350 : f32 = u_xlat3.y;
        u_xlat6.z = x_350;
        let x_353 : f32 = u_xlat2.z;
        u_xlat6.w = x_353;
        let x_355 : vec4<f32> = u_xlat4;
        let x_357 : vec4<f32> = u_xlat6;
        let x_359 : vec3<f32> = (vec3<f32>(x_355.z, x_355.y, x_355.w) + vec3<f32>(x_357.z, x_357.y, x_357.w));
        let x_360 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
        let x_362 : vec4<f32> = u_xlat3;
        let x_364 : vec4<f32> = u_xlat7;
        let x_366 : vec3<f32> = (vec3<f32>(x_362.x, x_362.z, x_362.w) / vec3<f32>(x_364.z, x_364.w, x_364.y));
        let x_367 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
        let x_369 : vec4<f32> = u_xlat3;
        let x_374 : vec3<f32> = (vec3<f32>(x_369.x, x_369.y, x_369.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_375 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
        let x_377 : vec4<f32> = u_xlat6;
        let x_379 : vec4<f32> = u_xlat2;
        let x_381 : vec3<f32> = (vec3<f32>(x_377.z, x_377.y, x_377.w) / vec3<f32>(x_379.x, x_379.y, x_379.z));
        let x_382 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
        let x_384 : vec4<f32> = u_xlat4;
        let x_386 : vec3<f32> = (vec3<f32>(x_384.x, x_384.y, x_384.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_387 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
        let x_389 : vec4<f32> = u_xlat3;
        let x_392 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_394 : vec3<f32> = (vec3<f32>(x_389.y, x_389.x, x_389.z) * vec3<f32>(x_392.x, x_392.x, x_392.x));
        let x_395 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
        let x_397 : vec4<f32> = u_xlat4;
        let x_400 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_402 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(x_400.y, x_400.y, x_400.y));
        let x_403 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
        let x_406 : f32 = u_xlat4.x;
        u_xlat3.w = x_406;
        let x_408 : vec4<f32> = u_xlat1;
        let x_411 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_414 : vec4<f32> = u_xlat3;
        u_xlat5 = ((vec4<f32>(x_408.x, x_408.y, x_408.x, x_408.y) * vec4<f32>(x_411.x, x_411.y, x_411.x, x_411.y)) + vec4<f32>(x_414.y, x_414.w, x_414.x, x_414.w));
        let x_417 : vec4<f32> = u_xlat1;
        let x_420 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_423 : vec4<f32> = u_xlat3;
        u_xlat31 = ((vec2<f32>(x_417.x, x_417.y) * vec2<f32>(x_420.x, x_420.y)) + vec2<f32>(x_423.z, x_423.w));
        let x_427 : f32 = u_xlat3.y;
        u_xlat4.w = x_427;
        let x_429 : vec4<f32> = u_xlat4;
        let x_430 : vec2<f32> = vec2<f32>(x_429.y, x_429.z);
        let x_431 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_431.x, x_430.x, x_431.z, x_430.y);
        let x_433 : vec4<f32> = u_xlat1;
        let x_436 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_439 : vec4<f32> = u_xlat3;
        u_xlat6 = ((vec4<f32>(x_433.x, x_433.y, x_433.x, x_433.y) * vec4<f32>(x_436.x, x_436.y, x_436.x, x_436.y)) + vec4<f32>(x_439.x, x_439.y, x_439.z, x_439.y));
        let x_442 : vec4<f32> = u_xlat1;
        let x_445 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_448 : vec4<f32> = u_xlat4;
        u_xlat4 = ((vec4<f32>(x_442.x, x_442.y, x_442.x, x_442.y) * vec4<f32>(x_445.x, x_445.y, x_445.x, x_445.y)) + vec4<f32>(x_448.w, x_448.y, x_448.w, x_448.z));
        let x_451 : vec4<f32> = u_xlat1;
        let x_454 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_457 : vec4<f32> = u_xlat3;
        u_xlat3 = ((vec4<f32>(x_451.x, x_451.y, x_451.x, x_451.y) * vec4<f32>(x_454.x, x_454.y, x_454.x, x_454.y)) + vec4<f32>(x_457.x, x_457.w, x_457.z, x_457.w));
        let x_461 : vec4<f32> = u_xlat2;
        let x_463 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_461.x, x_461.x, x_461.x, x_461.y) * vec4<f32>(x_463.z, x_463.w, x_463.y, x_463.z));
        let x_467 : vec4<f32> = u_xlat2;
        let x_469 : vec4<f32> = u_xlat7;
        u_xlat9 = (vec4<f32>(x_467.y, x_467.y, x_467.z, x_467.z) * x_469);
        let x_472 : f32 = u_xlat2.z;
        let x_474 : f32 = u_xlat7.y;
        u_xlat1.x = (x_472 * x_474);
        let x_478 : vec4<f32> = u_xlat5;
        let x_479 : vec2<f32> = vec2<f32>(x_478.x, x_478.y);
        let x_481 : f32 = vs_TEXCOORD4.z;
        txVec4 = vec3<f32>(x_479.x, x_479.y, x_481);
        let x_489 : vec3<f32> = txVec4;
        let x_491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_489.xy, x_489.z);
        u_xlat16 = x_491;
        let x_493 : vec4<f32> = u_xlat5;
        let x_494 : vec2<f32> = vec2<f32>(x_493.z, x_493.w);
        let x_496 : f32 = vs_TEXCOORD4.z;
        txVec5 = vec3<f32>(x_494.x, x_494.y, x_496);
        let x_503 : vec3<f32> = txVec5;
        let x_505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_503.xy, x_503.z);
        u_xlat2.x = x_505;
        let x_508 : f32 = u_xlat2.x;
        let x_510 : f32 = u_xlat8.y;
        u_xlat2.x = (x_508 * x_510);
        let x_514 : f32 = u_xlat8.x;
        let x_515 : f32 = u_xlat16;
        let x_518 : f32 = u_xlat2.x;
        u_xlat16 = ((x_514 * x_515) + x_518);
        let x_521 : vec2<f32> = u_xlat31;
        let x_523 : f32 = vs_TEXCOORD4.z;
        txVec6 = vec3<f32>(x_521.x, x_521.y, x_523);
        let x_530 : vec3<f32> = txVec6;
        let x_532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_530.xy, x_530.z);
        u_xlat31.x = x_532;
        let x_535 : f32 = u_xlat8.z;
        let x_537 : f32 = u_xlat31.x;
        let x_539 : f32 = u_xlat16;
        u_xlat16 = ((x_535 * x_537) + x_539);
        let x_542 : vec4<f32> = u_xlat4;
        let x_543 : vec2<f32> = vec2<f32>(x_542.x, x_542.y);
        let x_545 : f32 = vs_TEXCOORD4.z;
        txVec7 = vec3<f32>(x_543.x, x_543.y, x_545);
        let x_552 : vec3<f32> = txVec7;
        let x_554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_552.xy, x_552.z);
        u_xlat31.x = x_554;
        let x_557 : f32 = u_xlat8.w;
        let x_559 : f32 = u_xlat31.x;
        let x_561 : f32 = u_xlat16;
        u_xlat16 = ((x_557 * x_559) + x_561);
        let x_564 : vec4<f32> = u_xlat6;
        let x_565 : vec2<f32> = vec2<f32>(x_564.x, x_564.y);
        let x_567 : f32 = vs_TEXCOORD4.z;
        txVec8 = vec3<f32>(x_565.x, x_565.y, x_567);
        let x_574 : vec3<f32> = txVec8;
        let x_576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_574.xy, x_574.z);
        u_xlat31.x = x_576;
        let x_579 : f32 = u_xlat9.x;
        let x_581 : f32 = u_xlat31.x;
        let x_583 : f32 = u_xlat16;
        u_xlat16 = ((x_579 * x_581) + x_583);
        let x_586 : vec4<f32> = u_xlat6;
        let x_587 : vec2<f32> = vec2<f32>(x_586.z, x_586.w);
        let x_589 : f32 = vs_TEXCOORD4.z;
        txVec9 = vec3<f32>(x_587.x, x_587.y, x_589);
        let x_596 : vec3<f32> = txVec9;
        let x_598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_596.xy, x_596.z);
        u_xlat31.x = x_598;
        let x_601 : f32 = u_xlat9.y;
        let x_603 : f32 = u_xlat31.x;
        let x_605 : f32 = u_xlat16;
        u_xlat16 = ((x_601 * x_603) + x_605);
        let x_608 : vec4<f32> = u_xlat4;
        let x_609 : vec2<f32> = vec2<f32>(x_608.z, x_608.w);
        let x_611 : f32 = vs_TEXCOORD4.z;
        txVec10 = vec3<f32>(x_609.x, x_609.y, x_611);
        let x_618 : vec3<f32> = txVec10;
        let x_620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_618.xy, x_618.z);
        u_xlat31.x = x_620;
        let x_623 : f32 = u_xlat9.z;
        let x_625 : f32 = u_xlat31.x;
        let x_627 : f32 = u_xlat16;
        u_xlat16 = ((x_623 * x_625) + x_627);
        let x_630 : vec4<f32> = u_xlat3;
        let x_631 : vec2<f32> = vec2<f32>(x_630.x, x_630.y);
        let x_633 : f32 = vs_TEXCOORD4.z;
        txVec11 = vec3<f32>(x_631.x, x_631.y, x_633);
        let x_640 : vec3<f32> = txVec11;
        let x_642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_640.xy, x_640.z);
        u_xlat31.x = x_642;
        let x_645 : f32 = u_xlat9.w;
        let x_647 : f32 = u_xlat31.x;
        let x_649 : f32 = u_xlat16;
        u_xlat16 = ((x_645 * x_647) + x_649);
        let x_652 : vec4<f32> = u_xlat3;
        let x_653 : vec2<f32> = vec2<f32>(x_652.z, x_652.w);
        let x_655 : f32 = vs_TEXCOORD4.z;
        txVec12 = vec3<f32>(x_653.x, x_653.y, x_655);
        let x_662 : vec3<f32> = txVec12;
        let x_664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_662.xy, x_662.z);
        u_xlat31.x = x_664;
        let x_667 : f32 = u_xlat1.x;
        let x_669 : f32 = u_xlat31.x;
        let x_671 : f32 = u_xlat16;
        u_xlat45 = ((x_667 * x_669) + x_671);
      } else {
        let x_674 : vec4<f32> = vs_TEXCOORD4;
        let x_677 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_680 : vec2<f32> = ((vec2<f32>(x_674.x, x_674.y) * vec2<f32>(x_677.z, x_677.w)) + vec2<f32>(0.5f, 0.5f));
        let x_681 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
        let x_683 : vec4<f32> = u_xlat1;
        let x_685 : vec2<f32> = floor(vec2<f32>(x_683.x, x_683.y));
        let x_686 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_685.x, x_685.y, x_686.z, x_686.w);
        let x_688 : vec4<f32> = vs_TEXCOORD4;
        let x_691 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_694 : vec4<f32> = u_xlat1;
        u_xlat31 = ((vec2<f32>(x_688.x, x_688.y) * vec2<f32>(x_691.z, x_691.w)) + -(vec2<f32>(x_694.x, x_694.y)));
        let x_698 : vec2<f32> = u_xlat31;
        u_xlat2 = (vec4<f32>(x_698.x, x_698.x, x_698.y, x_698.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_701 : vec4<f32> = u_xlat2;
        let x_703 : vec4<f32> = u_xlat2;
        u_xlat3 = (vec4<f32>(x_701.x, x_701.x, x_701.z, x_701.z) * vec4<f32>(x_703.x, x_703.x, x_703.z, x_703.z));
        let x_706 : vec4<f32> = u_xlat3;
        let x_710 : vec2<f32> = (vec2<f32>(x_706.y, x_706.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_711 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_711.x, x_710.x, x_711.z, x_710.y);
        let x_713 : vec4<f32> = u_xlat3;
        let x_716 : vec2<f32> = u_xlat31;
        let x_718 : vec2<f32> = ((vec2<f32>(x_713.x, x_713.z) * vec2<f32>(0.5f, 0.5f)) + -(x_716));
        let x_719 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_718.x, x_719.y, x_718.y, x_719.w);
        let x_721 : vec2<f32> = u_xlat31;
        let x_723 : vec2<f32> = (-(x_721) + vec2<f32>(1.0f, 1.0f));
        let x_724 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_723.x, x_723.y, x_724.z, x_724.w);
        let x_726 : vec2<f32> = u_xlat31;
        u_xlat33 = min(x_726, vec2<f32>(0.0f, 0.0f));
        let x_728 : vec2<f32> = u_xlat33;
        let x_730 : vec2<f32> = u_xlat33;
        let x_732 : vec4<f32> = u_xlat3;
        let x_734 : vec2<f32> = ((-(x_728) * x_730) + vec2<f32>(x_732.x, x_732.y));
        let x_735 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_734.x, x_734.y, x_735.z, x_735.w);
        let x_737 : vec2<f32> = u_xlat31;
        u_xlat33 = max(x_737, vec2<f32>(0.0f, 0.0f));
        let x_741 : vec2<f32> = u_xlat33;
        let x_743 : vec2<f32> = u_xlat33;
        let x_745 : vec4<f32> = u_xlat2;
        let x_747 : vec2<f32> = ((-(x_741) * x_743) + vec2<f32>(x_745.y, x_745.w));
        let x_748 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_747.x, x_748.y, x_747.y);
        let x_750 : vec4<f32> = u_xlat3;
        let x_753 : vec2<f32> = (vec2<f32>(x_750.x, x_750.y) + vec2<f32>(2.0f, 2.0f));
        let x_754 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_753.x, x_753.y, x_754.z, x_754.w);
        let x_756 : vec3<f32> = u_xlat17;
        let x_758 : vec2<f32> = (vec2<f32>(x_756.x, x_756.z) + vec2<f32>(2.0f, 2.0f));
        let x_759 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_759.x, x_758.x, x_759.z, x_758.y);
        let x_762 : f32 = u_xlat2.y;
        u_xlat5.z = (x_762 * 0.08163200318813323975f);
        let x_766 : vec4<f32> = u_xlat2;
        let x_769 : vec3<f32> = (vec3<f32>(x_766.z, x_766.x, x_766.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_770 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
        let x_772 : vec4<f32> = u_xlat3;
        let x_775 : vec2<f32> = (vec2<f32>(x_772.x, x_772.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_776 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_775.x, x_775.y, x_776.z, x_776.w);
        let x_779 : f32 = u_xlat6.y;
        u_xlat5.x = x_779;
        let x_781 : vec2<f32> = u_xlat31;
        let x_788 : vec2<f32> = ((vec2<f32>(x_781.x, x_781.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_789 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_789.x, x_788.x, x_789.z, x_788.y);
        let x_791 : vec2<f32> = u_xlat31;
        let x_795 : vec2<f32> = ((vec2<f32>(x_791.x, x_791.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_796 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_795.x, x_796.y, x_795.y, x_796.w);
        let x_799 : f32 = u_xlat2.x;
        u_xlat3.y = x_799;
        let x_802 : f32 = u_xlat4.y;
        u_xlat3.w = x_802;
        let x_804 : vec4<f32> = u_xlat3;
        let x_805 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_804 + x_805);
        let x_807 : vec2<f32> = u_xlat31;
        let x_810 : vec2<f32> = ((vec2<f32>(x_807.y, x_807.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_811 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_811.x, x_810.x, x_811.z, x_810.y);
        let x_813 : vec2<f32> = u_xlat31;
        let x_816 : vec2<f32> = ((vec2<f32>(x_813.y, x_813.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_817 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_816.x, x_817.y, x_816.y, x_817.w);
        let x_820 : f32 = u_xlat2.y;
        u_xlat4.y = x_820;
        let x_822 : vec4<f32> = u_xlat4;
        let x_823 : vec4<f32> = u_xlat6;
        u_xlat2 = (x_822 + x_823);
        let x_825 : vec4<f32> = u_xlat3;
        let x_826 : vec4<f32> = u_xlat5;
        u_xlat3 = (x_825 / x_826);
        let x_828 : vec4<f32> = u_xlat3;
        u_xlat3 = (x_828 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_834 : vec4<f32> = u_xlat4;
        let x_835 : vec4<f32> = u_xlat2;
        u_xlat4 = (x_834 / x_835);
        let x_837 : vec4<f32> = u_xlat4;
        u_xlat4 = (x_837 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_839 : vec4<f32> = u_xlat3;
        let x_842 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        u_xlat3 = (vec4<f32>(x_839.w, x_839.x, x_839.y, x_839.z) * vec4<f32>(x_842.x, x_842.x, x_842.x, x_842.x));
        let x_845 : vec4<f32> = u_xlat4;
        let x_848 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        u_xlat4 = (vec4<f32>(x_845.x, x_845.w, x_845.y, x_845.z) * vec4<f32>(x_848.y, x_848.y, x_848.y, x_848.y));
        let x_851 : vec4<f32> = u_xlat3;
        let x_852 : vec3<f32> = vec3<f32>(x_851.y, x_851.z, x_851.w);
        let x_853 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_852.x, x_853.y, x_852.y, x_852.z);
        let x_856 : f32 = u_xlat4.x;
        u_xlat6.y = x_856;
        let x_858 : vec4<f32> = u_xlat1;
        let x_861 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_864 : vec4<f32> = u_xlat6;
        u_xlat7 = ((vec4<f32>(x_858.x, x_858.y, x_858.x, x_858.y) * vec4<f32>(x_861.x, x_861.y, x_861.x, x_861.y)) + vec4<f32>(x_864.x, x_864.y, x_864.z, x_864.y));
        let x_867 : vec4<f32> = u_xlat1;
        let x_870 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_873 : vec4<f32> = u_xlat6;
        u_xlat31 = ((vec2<f32>(x_867.x, x_867.y) * vec2<f32>(x_870.x, x_870.y)) + vec2<f32>(x_873.w, x_873.y));
        let x_877 : f32 = u_xlat6.y;
        u_xlat3.y = x_877;
        let x_880 : f32 = u_xlat4.z;
        u_xlat6.y = x_880;
        let x_882 : vec4<f32> = u_xlat1;
        let x_885 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_888 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_882.x, x_882.y, x_882.x, x_882.y) * vec4<f32>(x_885.x, x_885.y, x_885.x, x_885.y)) + vec4<f32>(x_888.x, x_888.y, x_888.z, x_888.y));
        let x_891 : vec4<f32> = u_xlat1;
        let x_894 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_897 : vec4<f32> = u_xlat6;
        let x_899 : vec2<f32> = ((vec2<f32>(x_891.x, x_891.y) * vec2<f32>(x_894.x, x_894.y)) + vec2<f32>(x_897.w, x_897.y));
        let x_900 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_899.x, x_899.y, x_900.z, x_900.w);
        let x_903 : f32 = u_xlat6.y;
        u_xlat3.z = x_903;
        let x_906 : vec4<f32> = u_xlat1;
        let x_909 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_912 : vec4<f32> = u_xlat3;
        u_xlat10 = ((vec4<f32>(x_906.x, x_906.y, x_906.x, x_906.y) * vec4<f32>(x_909.x, x_909.y, x_909.x, x_909.y)) + vec4<f32>(x_912.x, x_912.y, x_912.x, x_912.z));
        let x_916 : f32 = u_xlat4.w;
        u_xlat6.y = x_916;
        let x_919 : vec4<f32> = u_xlat1;
        let x_922 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_925 : vec4<f32> = u_xlat6;
        u_xlat11 = ((vec4<f32>(x_919.x, x_919.y, x_919.x, x_919.y) * vec4<f32>(x_922.x, x_922.y, x_922.x, x_922.y)) + vec4<f32>(x_925.x, x_925.y, x_925.z, x_925.y));
        let x_929 : vec4<f32> = u_xlat1;
        let x_932 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_935 : vec4<f32> = u_xlat6;
        u_xlat18 = ((vec2<f32>(x_929.x, x_929.y) * vec2<f32>(x_932.x, x_932.y)) + vec2<f32>(x_935.w, x_935.y));
        let x_939 : f32 = u_xlat6.y;
        u_xlat3.w = x_939;
        let x_942 : vec4<f32> = u_xlat1;
        let x_945 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_948 : vec4<f32> = u_xlat3;
        u_xlat39 = ((vec2<f32>(x_942.x, x_942.y) * vec2<f32>(x_945.x, x_945.y)) + vec2<f32>(x_948.x, x_948.w));
        let x_951 : vec4<f32> = u_xlat6;
        let x_952 : vec3<f32> = vec3<f32>(x_951.x, x_951.z, x_951.w);
        let x_953 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_952.x, x_953.y, x_952.y, x_952.z);
        let x_955 : vec4<f32> = u_xlat1;
        let x_958 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_961 : vec4<f32> = u_xlat4;
        u_xlat6 = ((vec4<f32>(x_955.x, x_955.y, x_955.x, x_955.y) * vec4<f32>(x_958.x, x_958.y, x_958.x, x_958.y)) + vec4<f32>(x_961.x, x_961.y, x_961.z, x_961.y));
        let x_965 : vec4<f32> = u_xlat1;
        let x_968 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_971 : vec4<f32> = u_xlat4;
        u_xlat34 = ((vec2<f32>(x_965.x, x_965.y) * vec2<f32>(x_968.x, x_968.y)) + vec2<f32>(x_971.w, x_971.y));
        let x_975 : f32 = u_xlat3.x;
        u_xlat4.x = x_975;
        let x_977 : vec4<f32> = u_xlat1;
        let x_980 : vec4<f32> = x_97.x_MainLightShadowmapSize;
        let x_983 : vec4<f32> = u_xlat4;
        let x_985 : vec2<f32> = ((vec2<f32>(x_977.x, x_977.y) * vec2<f32>(x_980.x, x_980.y)) + vec2<f32>(x_983.x, x_983.y));
        let x_986 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_985.x, x_985.y, x_986.z, x_986.w);
        let x_989 : vec4<f32> = u_xlat2;
        let x_991 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_989.x, x_989.x, x_989.x, x_989.x) * x_991);
        let x_994 : vec4<f32> = u_xlat2;
        let x_996 : vec4<f32> = u_xlat5;
        u_xlat13 = (vec4<f32>(x_994.y, x_994.y, x_994.y, x_994.y) * x_996);
        let x_999 : vec4<f32> = u_xlat2;
        let x_1001 : vec4<f32> = u_xlat5;
        u_xlat14 = (vec4<f32>(x_999.z, x_999.z, x_999.z, x_999.z) * x_1001);
        let x_1003 : vec4<f32> = u_xlat2;
        let x_1005 : vec4<f32> = u_xlat5;
        u_xlat2 = (vec4<f32>(x_1003.w, x_1003.w, x_1003.w, x_1003.w) * x_1005);
        let x_1008 : vec4<f32> = u_xlat7;
        let x_1009 : vec2<f32> = vec2<f32>(x_1008.x, x_1008.y);
        let x_1011 : f32 = vs_TEXCOORD4.z;
        txVec13 = vec3<f32>(x_1009.x, x_1009.y, x_1011);
        let x_1018 : vec3<f32> = txVec13;
        let x_1020 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1018.xy, x_1018.z);
        u_xlat3.x = x_1020;
        let x_1023 : vec4<f32> = u_xlat7;
        let x_1024 : vec2<f32> = vec2<f32>(x_1023.z, x_1023.w);
        let x_1026 : f32 = vs_TEXCOORD4.z;
        txVec14 = vec3<f32>(x_1024.x, x_1024.y, x_1026);
        let x_1034 : vec3<f32> = txVec14;
        let x_1036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1034.xy, x_1034.z);
        u_xlat48 = x_1036;
        let x_1037 : f32 = u_xlat48;
        let x_1039 : f32 = u_xlat12.y;
        u_xlat48 = (x_1037 * x_1039);
        let x_1042 : f32 = u_xlat12.x;
        let x_1044 : f32 = u_xlat3.x;
        let x_1046 : f32 = u_xlat48;
        u_xlat3.x = ((x_1042 * x_1044) + x_1046);
        let x_1050 : vec2<f32> = u_xlat31;
        let x_1052 : f32 = vs_TEXCOORD4.z;
        txVec15 = vec3<f32>(x_1050.x, x_1050.y, x_1052);
        let x_1059 : vec3<f32> = txVec15;
        let x_1061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1059.xy, x_1059.z);
        u_xlat31.x = x_1061;
        let x_1064 : f32 = u_xlat12.z;
        let x_1066 : f32 = u_xlat31.x;
        let x_1069 : f32 = u_xlat3.x;
        u_xlat31.x = ((x_1064 * x_1066) + x_1069);
        let x_1073 : vec4<f32> = u_xlat10;
        let x_1074 : vec2<f32> = vec2<f32>(x_1073.x, x_1073.y);
        let x_1076 : f32 = vs_TEXCOORD4.z;
        txVec16 = vec3<f32>(x_1074.x, x_1074.y, x_1076);
        let x_1084 : vec3<f32> = txVec16;
        let x_1086 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1084.xy, x_1084.z);
        u_xlat46 = x_1086;
        let x_1088 : f32 = u_xlat12.w;
        let x_1089 : f32 = u_xlat46;
        let x_1092 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1088 * x_1089) + x_1092);
        let x_1096 : vec4<f32> = u_xlat8;
        let x_1097 : vec2<f32> = vec2<f32>(x_1096.x, x_1096.y);
        let x_1099 : f32 = vs_TEXCOORD4.z;
        txVec17 = vec3<f32>(x_1097.x, x_1097.y, x_1099);
        let x_1106 : vec3<f32> = txVec17;
        let x_1108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1106.xy, x_1106.z);
        u_xlat46 = x_1108;
        let x_1110 : f32 = u_xlat13.x;
        let x_1111 : f32 = u_xlat46;
        let x_1114 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1110 * x_1111) + x_1114);
        let x_1118 : vec4<f32> = u_xlat8;
        let x_1119 : vec2<f32> = vec2<f32>(x_1118.z, x_1118.w);
        let x_1121 : f32 = vs_TEXCOORD4.z;
        txVec18 = vec3<f32>(x_1119.x, x_1119.y, x_1121);
        let x_1128 : vec3<f32> = txVec18;
        let x_1130 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1128.xy, x_1128.z);
        u_xlat46 = x_1130;
        let x_1132 : f32 = u_xlat13.y;
        let x_1133 : f32 = u_xlat46;
        let x_1136 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1132 * x_1133) + x_1136);
        let x_1140 : vec4<f32> = u_xlat9;
        let x_1141 : vec2<f32> = vec2<f32>(x_1140.x, x_1140.y);
        let x_1143 : f32 = vs_TEXCOORD4.z;
        txVec19 = vec3<f32>(x_1141.x, x_1141.y, x_1143);
        let x_1150 : vec3<f32> = txVec19;
        let x_1152 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1150.xy, x_1150.z);
        u_xlat46 = x_1152;
        let x_1154 : f32 = u_xlat13.z;
        let x_1155 : f32 = u_xlat46;
        let x_1158 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1154 * x_1155) + x_1158);
        let x_1162 : vec4<f32> = u_xlat10;
        let x_1163 : vec2<f32> = vec2<f32>(x_1162.z, x_1162.w);
        let x_1165 : f32 = vs_TEXCOORD4.z;
        txVec20 = vec3<f32>(x_1163.x, x_1163.y, x_1165);
        let x_1172 : vec3<f32> = txVec20;
        let x_1174 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1172.xy, x_1172.z);
        u_xlat46 = x_1174;
        let x_1176 : f32 = u_xlat13.w;
        let x_1177 : f32 = u_xlat46;
        let x_1180 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1176 * x_1177) + x_1180);
        let x_1184 : vec4<f32> = u_xlat11;
        let x_1185 : vec2<f32> = vec2<f32>(x_1184.x, x_1184.y);
        let x_1187 : f32 = vs_TEXCOORD4.z;
        txVec21 = vec3<f32>(x_1185.x, x_1185.y, x_1187);
        let x_1194 : vec3<f32> = txVec21;
        let x_1196 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1194.xy, x_1194.z);
        u_xlat46 = x_1196;
        let x_1198 : f32 = u_xlat14.x;
        let x_1199 : f32 = u_xlat46;
        let x_1202 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1198 * x_1199) + x_1202);
        let x_1206 : vec4<f32> = u_xlat11;
        let x_1207 : vec2<f32> = vec2<f32>(x_1206.z, x_1206.w);
        let x_1209 : f32 = vs_TEXCOORD4.z;
        txVec22 = vec3<f32>(x_1207.x, x_1207.y, x_1209);
        let x_1216 : vec3<f32> = txVec22;
        let x_1218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1216.xy, x_1216.z);
        u_xlat46 = x_1218;
        let x_1220 : f32 = u_xlat14.y;
        let x_1221 : f32 = u_xlat46;
        let x_1224 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1220 * x_1221) + x_1224);
        let x_1228 : vec2<f32> = u_xlat18;
        let x_1230 : f32 = vs_TEXCOORD4.z;
        txVec23 = vec3<f32>(x_1228.x, x_1228.y, x_1230);
        let x_1237 : vec3<f32> = txVec23;
        let x_1239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1237.xy, x_1237.z);
        u_xlat46 = x_1239;
        let x_1241 : f32 = u_xlat14.z;
        let x_1242 : f32 = u_xlat46;
        let x_1245 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1241 * x_1242) + x_1245);
        let x_1249 : vec2<f32> = u_xlat39;
        let x_1251 : f32 = vs_TEXCOORD4.z;
        txVec24 = vec3<f32>(x_1249.x, x_1249.y, x_1251);
        let x_1258 : vec3<f32> = txVec24;
        let x_1260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1258.xy, x_1258.z);
        u_xlat46 = x_1260;
        let x_1262 : f32 = u_xlat14.w;
        let x_1263 : f32 = u_xlat46;
        let x_1266 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1262 * x_1263) + x_1266);
        let x_1270 : vec4<f32> = u_xlat6;
        let x_1271 : vec2<f32> = vec2<f32>(x_1270.x, x_1270.y);
        let x_1273 : f32 = vs_TEXCOORD4.z;
        txVec25 = vec3<f32>(x_1271.x, x_1271.y, x_1273);
        let x_1280 : vec3<f32> = txVec25;
        let x_1282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1280.xy, x_1280.z);
        u_xlat46 = x_1282;
        let x_1284 : f32 = u_xlat2.x;
        let x_1285 : f32 = u_xlat46;
        let x_1288 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1284 * x_1285) + x_1288);
        let x_1292 : vec4<f32> = u_xlat6;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.z, x_1292.w);
        let x_1295 : f32 = vs_TEXCOORD4.z;
        txVec26 = vec3<f32>(x_1293.x, x_1293.y, x_1295);
        let x_1302 : vec3<f32> = txVec26;
        let x_1304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1302.xy, x_1302.z);
        u_xlat46 = x_1304;
        let x_1306 : f32 = u_xlat2.y;
        let x_1307 : f32 = u_xlat46;
        let x_1310 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1306 * x_1307) + x_1310);
        let x_1314 : vec2<f32> = u_xlat34;
        let x_1316 : f32 = vs_TEXCOORD4.z;
        txVec27 = vec3<f32>(x_1314.x, x_1314.y, x_1316);
        let x_1323 : vec3<f32> = txVec27;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1323.xy, x_1323.z);
        u_xlat46 = x_1325;
        let x_1327 : f32 = u_xlat2.z;
        let x_1328 : f32 = u_xlat46;
        let x_1331 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1327 * x_1328) + x_1331);
        let x_1335 : vec4<f32> = u_xlat1;
        let x_1336 : vec2<f32> = vec2<f32>(x_1335.x, x_1335.y);
        let x_1338 : f32 = vs_TEXCOORD4.z;
        txVec28 = vec3<f32>(x_1336.x, x_1336.y, x_1338);
        let x_1345 : vec3<f32> = txVec28;
        let x_1347 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1345.xy, x_1345.z);
        u_xlat1.x = x_1347;
        let x_1350 : f32 = u_xlat2.w;
        let x_1352 : f32 = u_xlat1.x;
        let x_1355 : f32 = u_xlat31.x;
        u_xlat45 = ((x_1350 * x_1352) + x_1355);
      }
    }
  } else {
    let x_1359 : vec4<f32> = vs_TEXCOORD4;
    let x_1360 : vec2<f32> = vec2<f32>(x_1359.x, x_1359.y);
    let x_1362 : f32 = vs_TEXCOORD4.z;
    txVec29 = vec3<f32>(x_1360.x, x_1360.y, x_1362);
    let x_1369 : vec3<f32> = txVec29;
    let x_1371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1369.xy, x_1369.z);
    u_xlat45 = x_1371;
  }
  let x_1373 : f32 = x_97.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1373) + 1.0f);
  let x_1377 : f32 = u_xlat45;
  let x_1379 : f32 = x_97.x_MainLightShadowParams.x;
  let x_1382 : f32 = u_xlat1.x;
  u_xlat45 = ((x_1377 * x_1379) + x_1382);
  let x_1385 : f32 = vs_TEXCOORD4.z;
  u_xlatb1 = (0.0f >= x_1385);
  let x_1389 : f32 = vs_TEXCOORD4.z;
  u_xlatb16 = (x_1389 >= 1.0f);
  let x_1391 : bool = u_xlatb16;
  let x_1392 : bool = u_xlatb1;
  u_xlatb1 = (x_1391 | x_1392);
  let x_1394 : bool = u_xlatb1;
  let x_1395 : f32 = u_xlat45;
  u_xlat45 = select(x_1395, 1.0f, x_1394);
  let x_1398 : vec4<f32> = vs_TEXCOORD3;
  let x_1400 : f32 = u_xlat45;
  let x_1403 : vec4<f32> = u_xlat0;
  let x_1405 : vec3<f32> = ((vec3<f32>(x_1398.x, x_1398.y, x_1398.z) * vec3<f32>(x_1400, x_1400, x_1400)) + vec3<f32>(x_1403.x, x_1403.y, x_1403.z));
  let x_1406 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1405.x, x_1405.y, x_1405.z, x_1406.w);
  let x_1414 : vec2<f32> = vs_TEXCOORD0;
  let x_1416 : f32 = x_26.x_GlobalMipBias.x;
  let x_1417 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_1414, x_1416);
  let x_1418 : vec3<f32> = vec3<f32>(x_1417.x, x_1417.y, x_1417.z);
  let x_1419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
  let x_1421 : vec4<f32> = u_xlat1;
  let x_1424 : vec4<f32> = vs_TEXCOORD2;
  let x_1426 : vec3<f32> = (vec3<f32>(x_1421.x, x_1421.y, x_1421.z) * vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
  let x_1427 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
  let x_1431 : vec4<f32> = u_xlat0;
  let x_1433 : vec4<f32> = u_xlat1;
  let x_1435 : vec3<f32> = (vec3<f32>(x_1431.x, x_1431.y, x_1431.z) * vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
  let x_1436 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
  SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  SV_Target1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
  let x_1443 : vec3<f32> = vs_TEXCOORD5;
  let x_1444 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_1443.x, x_1443.y, x_1443.z, x_1444.w);
  SV_Target2.w = 0.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target3, SV_Target0, SV_Target1, SV_Target2);
}


