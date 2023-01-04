struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  unity_MatrixInvVP : mat4x4<f32>,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraDepthTexture : sampler;

@group(1) @binding(1) var<uniform> x_91 : MainLightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(2) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb1 : vec4<bool>;
  var u_xlat9 : f32;
  var u_xlatu9 : u32;
  var u_xlati9 : i32;
  var u_xlatb9 : bool;
  var txVec0 : vec3<f32>;
  var u_xlatb3 : bool;
  var u_xlat6 : f32;
  var x_322 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_19 : vec2<f32> = ((x_13 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_20 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_19.x, x_19.y, x_20.z, x_20.w);
  let x_23 : vec4<f32> = u_xlat0;
  let x_34 : vec4<f32> = x_29.unity_MatrixInvVP[1i];
  u_xlat1 = (-(vec4<f32>(x_23.y, x_23.y, x_23.y, x_23.y)) * x_34);
  let x_38 : vec4<f32> = x_29.unity_MatrixInvVP[0i];
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_38 * vec4<f32>(x_39.x, x_39.x, x_39.x, x_39.x)) + x_42);
  let x_54 : vec2<f32> = vs_TEXCOORD0;
  let x_59 : f32 = x_29.x_GlobalMipBias.x;
  let x_60 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, x_54, x_59);
  u_xlat1.x = x_60.x;
  let x_66 : vec4<f32> = x_29.unity_MatrixInvVP[2i];
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_72 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = x_29.unity_MatrixInvVP[3i];
  u_xlat0 = (x_72 + x_75);
  let x_78 : vec4<f32> = u_xlat0;
  let x_80 : vec4<f32> = u_xlat0;
  let x_82 : vec3<f32> = (vec3<f32>(x_78.x, x_78.y, x_78.z) / vec3<f32>(x_80.w, x_80.w, x_80.w));
  let x_83 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_85 : vec4<f32> = u_xlat0;
  let x_93 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres0;
  let x_96 : vec3<f32> = (vec3<f32>(x_85.x, x_85.y, x_85.z) + -(vec3<f32>(x_93.x, x_93.y, x_93.z)));
  let x_97 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_99 : vec4<f32> = u_xlat1;
  let x_101 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_99.x, x_99.y, x_99.z), vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_107 : vec4<f32> = u_xlat0;
  let x_110 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres1;
  u_xlat2 = (vec3<f32>(x_107.x, x_107.y, x_107.z) + -(vec3<f32>(x_110.x, x_110.y, x_110.z)));
  let x_114 : vec3<f32> = u_xlat2;
  let x_115 : vec3<f32> = u_xlat2;
  u_xlat1.y = dot(x_114, x_115);
  let x_119 : vec4<f32> = u_xlat0;
  let x_122 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres2;
  u_xlat2 = (vec3<f32>(x_119.x, x_119.y, x_119.z) + -(vec3<f32>(x_122.x, x_122.y, x_122.z)));
  let x_126 : vec3<f32> = u_xlat2;
  let x_127 : vec3<f32> = u_xlat2;
  u_xlat1.z = dot(x_126, x_127);
  let x_131 : vec4<f32> = u_xlat0;
  let x_135 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres3;
  u_xlat2 = (vec3<f32>(x_131.x, x_131.y, x_131.z) + -(vec3<f32>(x_135.x, x_135.y, x_135.z)));
  let x_139 : vec3<f32> = u_xlat2;
  let x_140 : vec3<f32> = u_xlat2;
  u_xlat1.w = dot(x_139, x_140);
  let x_148 : vec4<f32> = u_xlat1;
  let x_151 : vec4<f32> = x_91.x_CascadeShadowSplitSphereRadii;
  u_xlatb1 = (x_148 < x_151);
  let x_155 : bool = u_xlatb1.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_155);
  let x_160 : bool = u_xlatb1.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_160);
  let x_164 : bool = u_xlatb1.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_164);
  let x_168 : bool = u_xlatb1.x;
  u_xlat1.x = select(0.0f, 1.0f, x_168);
  let x_174 : bool = u_xlatb1.y;
  u_xlat1.y = select(0.0f, 1.0f, x_174);
  let x_178 : bool = u_xlatb1.z;
  u_xlat1.z = select(0.0f, 1.0f, x_178);
  let x_182 : bool = u_xlatb1.w;
  u_xlat1.w = select(0.0f, 1.0f, x_182);
  let x_185 : vec3<f32> = u_xlat2;
  let x_186 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_185 + vec3<f32>(x_186.y, x_186.z, x_186.w));
  let x_189 : vec3<f32> = u_xlat2;
  let x_191 : vec3<f32> = max(x_189, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_192 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_192.x, x_191.x, x_191.y, x_191.z);
  let x_195 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(x_195, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_200 : f32 = u_xlat9;
  u_xlat9 = (-(x_200) + 4.0f);
  let x_205 : f32 = u_xlat9;
  u_xlatu9 = u32(x_205);
  let x_209 : u32 = u_xlatu9;
  u_xlati9 = (bitcast<i32>(x_209) << bitcast<u32>(2i));
  let x_212 : vec4<f32> = u_xlat0;
  let x_214 : i32 = u_xlati9;
  let x_217 : i32 = u_xlati9;
  let x_221 : vec4<f32> = x_91.x_MainLightWorldToShadow[((x_214 + 1i) / 4i)][((x_217 + 1i) % 4i)];
  let x_223 : vec3<f32> = (vec3<f32>(x_212.y, x_212.y, x_212.y) * vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : i32 = u_xlati9;
  let x_228 : i32 = u_xlati9;
  let x_231 : vec4<f32> = x_91.x_MainLightWorldToShadow[(x_226 / 4i)][(x_228 % 4i)];
  let x_233 : vec4<f32> = u_xlat0;
  let x_236 : vec4<f32> = u_xlat1;
  let x_238 : vec3<f32> = ((vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_233.x, x_233.x, x_233.x)) + vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_239 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : i32 = u_xlati9;
  let x_244 : i32 = u_xlati9;
  let x_248 : vec4<f32> = x_91.x_MainLightWorldToShadow[((x_241 + 2i) / 4i)][((x_244 + 2i) % 4i)];
  let x_250 : vec4<f32> = u_xlat0;
  let x_253 : vec4<f32> = u_xlat1;
  let x_255 : vec3<f32> = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.z, x_250.z, x_250.z)) + vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat0;
  let x_260 : i32 = u_xlati9;
  let x_263 : i32 = u_xlati9;
  let x_267 : vec4<f32> = x_91.x_MainLightWorldToShadow[((x_260 + 3i) / 4i)][((x_263 + 3i) % 4i)];
  let x_269 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) + vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_274 : f32 = u_xlat0.z;
  u_xlatb9 = (0.0f >= x_274);
  let x_277 : f32 = u_xlat0.z;
  u_xlatb1.x = (x_277 >= 1.0f);
  let x_281 : vec4<f32> = u_xlat0;
  let x_282 : vec2<f32> = vec2<f32>(x_281.x, x_281.y);
  let x_284 : f32 = u_xlat0.z;
  txVec0 = vec3<f32>(x_282.x, x_282.y, x_284);
  let x_296 : vec3<f32> = txVec0;
  let x_298 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_296.xy, x_296.z);
  u_xlat0.x = x_298;
  let x_301 : bool = u_xlatb9;
  let x_303 : bool = u_xlatb1.x;
  u_xlatb3 = (x_301 | x_303);
  let x_308 : f32 = x_91.x_MainLightShadowParams.x;
  u_xlat6 = (-(x_308) + 1.0f);
  let x_312 : f32 = u_xlat0.x;
  let x_314 : f32 = x_91.x_MainLightShadowParams.x;
  let x_316 : f32 = u_xlat6;
  u_xlat0.x = ((x_312 * x_314) + x_316);
  let x_321 : bool = u_xlatb3;
  if (x_321) {
    x_322 = vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f);
  } else {
    let x_327 : vec4<f32> = u_xlat0;
    x_322 = vec4<f32>(x_327.x, x_327.x, x_327.x, x_327.x);
  }
  let x_329 : vec4<f32> = x_322;
  SV_Target0 = x_329;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

