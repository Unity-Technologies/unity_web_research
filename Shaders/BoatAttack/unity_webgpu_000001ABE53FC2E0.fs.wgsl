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

struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

var<private> vs_TEXCOORD6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_20 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_291 : PGlobals;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var u_xlat2 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlatb1 : bool;
  var txVec0 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlat4 : f32;
  var x_270 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD6;
  let x_25 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres0;
  let x_28 : vec3<f32> = (x_13 + -(vec3<f32>(x_25.x, x_25.y, x_25.z)));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_28.x, x_28.y, x_28.z, x_29.w);
  let x_31 : vec4<f32> = u_xlat0;
  let x_33 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_31.x, x_31.y, x_31.z), vec3<f32>(x_33.x, x_33.y, x_33.z));
  let x_40 : vec3<f32> = vs_TEXCOORD6;
  let x_43 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres1;
  let x_46 : vec3<f32> = (x_40 + -(vec3<f32>(x_43.x, x_43.y, x_43.z)));
  let x_47 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_49 : vec4<f32> = u_xlat1;
  let x_51 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(x_49.x, x_49.y, x_49.z), vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_56 : vec3<f32> = vs_TEXCOORD6;
  let x_59 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres2;
  let x_62 : vec3<f32> = (x_56 + -(vec3<f32>(x_59.x, x_59.y, x_59.z)));
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  let x_65 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(x_65.x, x_65.y, x_65.z), vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_72 : vec3<f32> = vs_TEXCOORD6;
  let x_75 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres3;
  let x_78 : vec3<f32> = (x_72 + -(vec3<f32>(x_75.x, x_75.y, x_75.z)));
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat0.w = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_92 : vec4<f32> = u_xlat0;
  let x_95 : vec4<f32> = x_20.x_CascadeShadowSplitSphereRadii;
  u_xlatb0 = (x_92 < x_95);
  let x_99 : bool = u_xlatb0.x;
  u_xlat1.x = select(-0.0f, -1.0f, x_99);
  let x_105 : bool = u_xlatb0.y;
  u_xlat1.y = select(-0.0f, -1.0f, x_105);
  let x_109 : bool = u_xlatb0.z;
  u_xlat1.z = select(-0.0f, -1.0f, x_109);
  let x_113 : bool = u_xlatb0.x;
  u_xlat0.x = select(0.0f, 1.0f, x_113);
  let x_119 : bool = u_xlatb0.y;
  u_xlat0.y = select(0.0f, 1.0f, x_119);
  let x_123 : bool = u_xlatb0.z;
  u_xlat0.z = select(0.0f, 1.0f, x_123);
  let x_127 : bool = u_xlatb0.w;
  u_xlat0.w = select(0.0f, 1.0f, x_127);
  let x_130 : vec4<f32> = u_xlat1;
  let x_132 : vec4<f32> = u_xlat0;
  let x_134 : vec3<f32> = (vec3<f32>(x_130.x, x_130.y, x_130.z) + vec3<f32>(x_132.y, x_132.z, x_132.w));
  let x_135 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_137 : vec4<f32> = u_xlat1;
  let x_140 : vec3<f32> = max(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_141 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_141.x, x_140.x, x_140.y, x_140.z);
  let x_143 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_143, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_151 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_151) + 4.0f);
  let x_158 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_158);
  let x_162 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_162) << bitcast<u32>(2i));
  let x_167 : vec3<f32> = vs_TEXCOORD6;
  let x_170 : i32 = u_xlati0;
  let x_173 : i32 = u_xlati0;
  let x_177 : vec4<f32> = x_20.x_MainLightWorldToShadow[((x_170 + 1i) / 4i)][((x_173 + 1i) % 4i)];
  u_xlat2 = (vec3<f32>(x_167.y, x_167.y, x_167.y) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : i32 = u_xlati0;
  let x_182 : i32 = u_xlati0;
  let x_185 : vec4<f32> = x_20.x_MainLightWorldToShadow[(x_180 / 4i)][(x_182 % 4i)];
  let x_187 : vec3<f32> = vs_TEXCOORD6;
  let x_190 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.x, x_187.x, x_187.x)) + x_190);
  let x_192 : i32 = u_xlati0;
  let x_195 : i32 = u_xlati0;
  let x_199 : vec4<f32> = x_20.x_MainLightWorldToShadow[((x_192 + 2i) / 4i)][((x_195 + 2i) % 4i)];
  let x_201 : vec3<f32> = vs_TEXCOORD6;
  let x_204 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_201.z, x_201.z, x_201.z)) + x_204);
  let x_206 : vec3<f32> = u_xlat2;
  let x_207 : i32 = u_xlati0;
  let x_210 : i32 = u_xlati0;
  let x_214 : vec4<f32> = x_20.x_MainLightWorldToShadow[((x_207 + 3i) / 4i)][((x_210 + 3i) % 4i)];
  let x_216 : vec3<f32> = (x_206 + vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_221 : f32 = u_xlat0.z;
  u_xlatb6 = (0.0f >= x_221);
  let x_225 : f32 = u_xlat0.z;
  u_xlatb1 = (x_225 >= 1.0f);
  let x_229 : vec4<f32> = u_xlat0;
  let x_230 : vec2<f32> = vec2<f32>(x_229.x, x_229.y);
  let x_232 : f32 = u_xlat0.z;
  txVec0 = vec3<f32>(x_230.x, x_230.y, x_232);
  let x_246 : vec3<f32> = txVec0;
  let x_248 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_246.xy, x_246.z);
  u_xlat0.x = x_248;
  let x_251 : bool = u_xlatb6;
  let x_252 : bool = u_xlatb1;
  u_xlatb2 = (x_251 | x_252);
  let x_258 : f32 = x_20.x_MainLightShadowParams.x;
  u_xlat4 = (-(x_258) + 1.0f);
  let x_262 : f32 = u_xlat0.x;
  let x_264 : f32 = x_20.x_MainLightShadowParams.x;
  let x_266 : f32 = u_xlat4;
  u_xlat0.x = ((x_262 * x_264) + x_266);
  let x_269 : bool = u_xlatb2;
  if (x_269) {
    x_270 = 1.0f;
  } else {
    let x_275 : f32 = u_xlat0.x;
    x_270 = x_275;
  }
  let x_276 : f32 = x_270;
  u_xlat0.x = x_276;
  let x_288 : vec2<f32> = vs_TEXCOORD1;
  let x_293 : f32 = x_291.x_GlobalMipBias.x;
  let x_294 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_288, x_293);
  u_xlat2 = vec3<f32>(x_294.x, x_294.y, x_294.z);
  let x_298 : vec4<f32> = vs_TEXCOORD3;
  let x_300 : vec4<f32> = u_xlat0;
  let x_303 : vec3<f32> = u_xlat2;
  let x_304 : vec3<f32> = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(x_300.x, x_300.x, x_300.x)) + x_303);
  let x_305 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_313 : vec2<f32> = vs_TEXCOORD0;
  let x_315 : f32 = x_291.x_GlobalMipBias.x;
  let x_316 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_313, x_315);
  u_xlat1 = x_316;
  let x_319 : vec4<f32> = u_xlat0;
  let x_321 : vec4<f32> = u_xlat1;
  let x_323 : vec3<f32> = (vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_327 : f32 = u_xlat1.w;
  SV_Target0.w = x_327;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD6_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

