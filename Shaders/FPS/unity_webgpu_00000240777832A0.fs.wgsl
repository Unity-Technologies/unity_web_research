type Arr = array<vec4<f32>, 4u>;

type Arr_1 = array<mat4x4<f32>, 4u>;

struct PGlobals {
  unity_CameraInvProjection : mat4x4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  unity_ShadowSplitSpheres : Arr,
  unity_ShadowSplitSqRadii : vec4<f32>,
  unity_WorldToShadow : Arr_1,
  x_LightShadowData : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_62 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb1 : vec4<bool>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat8 : f32;

@group(0) @binding(2) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat4 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_23.x, x_23.y));
  u_xlat0.x = x_25.x;
  let x_32 : f32 = u_xlat0.x;
  u_xlat0.z = (-(x_32) + 1.0f);
  let x_38 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec2<f32> = vec2<f32>(x_38.z, x_38.w);
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_39.x, x_39.y, x_40.z, x_40.w);
  let x_43 : vec4<f32> = u_xlat0;
  let x_50 : vec3<f32> = ((vec3<f32>(x_43.x, x_43.y, x_43.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_51 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_50.x, x_50.y, x_50.z, x_51.w);
  let x_54 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = x_62.unity_CameraInvProjection[1i];
  u_xlat1 = (vec4<f32>(x_54.y, x_54.y, x_54.y, x_54.y) * x_68);
  let x_71 : vec4<f32> = x_62.unity_CameraInvProjection[0i];
  let x_72 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_71 * vec4<f32>(x_72.x, x_72.x, x_72.x, x_72.x)) + x_75);
  let x_79 : vec4<f32> = x_62.unity_CameraInvProjection[2i];
  let x_80 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_79 * vec4<f32>(x_80.z, x_80.z, x_80.z, x_80.z)) + x_83);
  let x_85 : vec4<f32> = u_xlat0;
  let x_88 : vec4<f32> = x_62.unity_CameraInvProjection[3i];
  u_xlat0 = (x_85 + x_88);
  let x_90 : vec4<f32> = u_xlat0;
  let x_92 : vec4<f32> = u_xlat0;
  let x_94 : vec3<f32> = (vec3<f32>(x_90.x, x_90.y, x_90.z) / vec3<f32>(x_92.w, x_92.w, x_92.w));
  let x_95 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_97 : vec4<f32> = u_xlat0;
  let x_100 : vec4<f32> = x_62.unity_CameraToWorld[1i];
  u_xlat1 = (vec4<f32>(x_97.y, x_97.y, x_97.y, x_97.y) * x_100);
  let x_103 : vec4<f32> = x_62.unity_CameraToWorld[0i];
  let x_104 : vec4<f32> = u_xlat0;
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_103 * vec4<f32>(x_104.x, x_104.x, x_104.x, x_104.x)) + x_107);
  let x_110 : vec4<f32> = x_62.unity_CameraToWorld[2i];
  let x_111 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_110 * -(vec4<f32>(x_111.z, x_111.z, x_111.z, x_111.z))) + x_115);
  let x_117 : vec4<f32> = u_xlat0;
  let x_119 : vec4<f32> = x_62.unity_CameraToWorld[3i];
  u_xlat0 = (x_117 + x_119);
  let x_121 : vec4<f32> = u_xlat0;
  let x_124 : vec4<f32> = x_62.unity_ShadowSplitSpheres[0i];
  let x_127 : vec3<f32> = (vec3<f32>(x_121.x, x_121.y, x_121.z) + -(vec3<f32>(x_124.x, x_124.y, x_124.z)));
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : vec4<f32> = u_xlat1;
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_130.x, x_130.y, x_130.z), vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_138 : vec4<f32> = u_xlat0;
  let x_141 : vec4<f32> = x_62.unity_ShadowSplitSpheres[1i];
  u_xlat2 = (vec3<f32>(x_138.x, x_138.y, x_138.z) + -(vec3<f32>(x_141.x, x_141.y, x_141.z)));
  let x_145 : vec3<f32> = u_xlat2;
  let x_146 : vec3<f32> = u_xlat2;
  u_xlat1.y = dot(x_145, x_146);
  let x_150 : vec4<f32> = u_xlat0;
  let x_153 : vec4<f32> = x_62.unity_ShadowSplitSpheres[2i];
  u_xlat2 = (vec3<f32>(x_150.x, x_150.y, x_150.z) + -(vec3<f32>(x_153.x, x_153.y, x_153.z)));
  let x_157 : vec3<f32> = u_xlat2;
  let x_158 : vec3<f32> = u_xlat2;
  u_xlat1.z = dot(x_157, x_158);
  let x_161 : vec4<f32> = u_xlat0;
  let x_164 : vec4<f32> = x_62.unity_ShadowSplitSpheres[3i];
  u_xlat2 = (vec3<f32>(x_161.x, x_161.y, x_161.z) + -(vec3<f32>(x_164.x, x_164.y, x_164.z)));
  let x_168 : vec3<f32> = u_xlat2;
  let x_169 : vec3<f32> = u_xlat2;
  u_xlat1.w = dot(x_168, x_169);
  let x_177 : vec4<f32> = u_xlat1;
  let x_179 : vec4<f32> = x_62.unity_ShadowSplitSqRadii;
  u_xlatb1 = (x_177 < x_179);
  let x_183 : bool = u_xlatb1.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_183);
  let x_188 : bool = u_xlatb1.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_188);
  let x_192 : bool = u_xlatb1.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_192);
  let x_196 : bool = u_xlatb1.x;
  u_xlat1.x = select(0.0f, 1.0f, x_196);
  let x_201 : bool = u_xlatb1.y;
  u_xlat1.y = select(0.0f, 1.0f, x_201);
  let x_205 : bool = u_xlatb1.z;
  u_xlat1.z = select(0.0f, 1.0f, x_205);
  let x_209 : bool = u_xlatb1.w;
  u_xlat1.w = select(0.0f, 1.0f, x_209);
  let x_212 : vec3<f32> = u_xlat2;
  let x_213 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_212 + vec3<f32>(x_213.y, x_213.z, x_213.w));
  let x_216 : vec3<f32> = u_xlat2;
  let x_218 : vec3<f32> = max(x_216, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_219 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_218.x, x_218.y, x_218.z);
  let x_221 : vec4<f32> = u_xlat0;
  let x_225 : vec4<f32> = x_62.unity_WorldToShadow[1i][1i];
  u_xlat2 = (vec3<f32>(x_221.y, x_221.y, x_221.y) * vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_229 : vec4<f32> = x_62.unity_WorldToShadow[1i][0i];
  let x_231 : vec4<f32> = u_xlat0;
  let x_234 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(x_231.x, x_231.x, x_231.x)) + x_234);
  let x_237 : vec4<f32> = x_62.unity_WorldToShadow[1i][2i];
  let x_239 : vec4<f32> = u_xlat0;
  let x_242 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_237.x, x_237.y, x_237.z) * vec3<f32>(x_239.z, x_239.z, x_239.z)) + x_242);
  let x_245 : vec4<f32> = x_62.unity_WorldToShadow[1i][3i];
  let x_247 : vec4<f32> = u_xlat0;
  let x_250 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.w, x_247.w, x_247.w)) + x_250);
  let x_252 : vec4<f32> = u_xlat1;
  let x_254 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_252.y, x_252.y, x_252.y) * x_254);
  let x_257 : vec4<f32> = u_xlat0;
  let x_260 : vec4<f32> = x_62.unity_WorldToShadow[0i][1i];
  u_xlat3 = (vec3<f32>(x_257.y, x_257.y, x_257.y) * vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_264 : vec4<f32> = x_62.unity_WorldToShadow[0i][0i];
  let x_266 : vec4<f32> = u_xlat0;
  let x_269 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_264.x, x_264.y, x_264.z) * vec3<f32>(x_266.x, x_266.x, x_266.x)) + x_269);
  let x_272 : vec4<f32> = x_62.unity_WorldToShadow[0i][2i];
  let x_274 : vec4<f32> = u_xlat0;
  let x_277 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_272.x, x_272.y, x_272.z) * vec3<f32>(x_274.z, x_274.z, x_274.z)) + x_277);
  let x_280 : vec4<f32> = x_62.unity_WorldToShadow[0i][3i];
  let x_282 : vec4<f32> = u_xlat0;
  let x_285 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_282.w, x_282.w, x_282.w)) + x_285);
  let x_287 : vec3<f32> = u_xlat3;
  let x_288 : vec4<f32> = u_xlat1;
  let x_291 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_287 * vec3<f32>(x_288.x, x_288.x, x_288.x)) + x_291);
  let x_293 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(x_293, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_297 : vec4<f32> = u_xlat0;
  let x_300 : vec4<f32> = x_62.unity_WorldToShadow[2i][1i];
  u_xlat3 = (vec3<f32>(x_297.y, x_297.y, x_297.y) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_304 : vec4<f32> = x_62.unity_WorldToShadow[2i][0i];
  let x_306 : vec4<f32> = u_xlat0;
  let x_309 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.x, x_306.x, x_306.x)) + x_309);
  let x_312 : vec4<f32> = x_62.unity_WorldToShadow[2i][2i];
  let x_314 : vec4<f32> = u_xlat0;
  let x_317 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.z, x_314.z, x_314.z)) + x_317);
  let x_320 : vec4<f32> = x_62.unity_WorldToShadow[2i][3i];
  let x_322 : vec4<f32> = u_xlat0;
  let x_325 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.w, x_322.w, x_322.w)) + x_325);
  let x_327 : vec3<f32> = u_xlat3;
  let x_328 : vec4<f32> = u_xlat1;
  let x_331 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_327 * vec3<f32>(x_328.z, x_328.z, x_328.z)) + x_331);
  let x_333 : vec4<f32> = u_xlat0;
  let x_336 : vec4<f32> = x_62.unity_WorldToShadow[3i][1i];
  u_xlat3 = (vec3<f32>(x_333.y, x_333.y, x_333.y) * vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_340 : vec4<f32> = x_62.unity_WorldToShadow[3i][0i];
  let x_342 : vec4<f32> = u_xlat0;
  let x_345 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342.x, x_342.x, x_342.x)) + x_345);
  let x_348 : vec4<f32> = x_62.unity_WorldToShadow[3i][2i];
  let x_350 : vec4<f32> = u_xlat0;
  let x_353 : vec3<f32> = u_xlat3;
  let x_354 : vec3<f32> = ((vec3<f32>(x_348.x, x_348.y, x_348.z) * vec3<f32>(x_350.z, x_350.z, x_350.z)) + x_353);
  let x_355 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : vec4<f32> = x_62.unity_WorldToShadow[3i][3i];
  let x_360 : vec4<f32> = u_xlat0;
  let x_363 : vec4<f32> = u_xlat0;
  let x_365 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_360.w, x_360.w, x_360.w)) + vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec4<f32> = u_xlat0;
  let x_370 : vec4<f32> = u_xlat1;
  let x_373 : vec3<f32> = u_xlat2;
  let x_374 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370.w, x_370.w, x_370.w)) + x_373);
  let x_375 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_379 : f32 = u_xlat1.x;
  let x_382 : f32 = u_xlat0.z;
  u_xlat8 = (-(x_379) + x_382);
  let x_384 : f32 = u_xlat8;
  u_xlat8 = (x_384 + 1.0f);
  let x_388 : vec4<f32> = u_xlat0;
  let x_389 : vec2<f32> = vec2<f32>(x_388.x, x_388.y);
  let x_390 : f32 = u_xlat8;
  txVec0 = vec3<f32>(x_389.x, x_389.y, x_390);
  let x_402 : vec3<f32> = txVec0;
  let x_404 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_402.xy, x_402.z);
  u_xlat0.x = x_404;
  let x_410 : f32 = x_62.x_LightShadowData.x;
  u_xlat4 = (-(x_410) + 1.0f);
  let x_415 : vec4<f32> = u_xlat0;
  let x_417 : f32 = u_xlat4;
  let x_421 : vec4<f32> = x_62.x_LightShadowData;
  SV_Target0 = ((vec4<f32>(x_415.x, x_415.x, x_415.x, x_415.x) * vec4<f32>(x_417, x_417, x_417, x_417)) + vec4<f32>(x_421.x, x_421.x, x_421.x, x_421.x));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

