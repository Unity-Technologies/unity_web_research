struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  unity_FogColor : vec4<f32>,
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

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_118 : MainLightShadows;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat1 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlatb3 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_23, x_33);
  u_xlat0 = x_34;
  let x_36 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = (vec3<f32>(x_36.x, x_36.y, x_36.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_47 : f32 = u_xlat0.w;
  u_xlat6 = max(x_47, 0.0001f);
  let x_52 : vec4<f32> = vs_TEXCOORD5;
  let x_54 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_52.x, x_52.y, x_52.z), vec3<f32>(x_54.x, x_54.y, x_54.z));
  let x_59 : f32 = u_xlat0.x;
  u_xlat0.x = (x_59 + 0.5f);
  let x_68 : vec2<f32> = vs_TEXCOORD1;
  let x_70 : f32 = x_26.x_GlobalMipBias.x;
  let x_71 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_68, x_70);
  let x_72 : vec3<f32> = vec3<f32>(x_71.x, x_71.y, x_71.z);
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_72.x, x_72.y, x_72.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat0;
  let x_77 : vec4<f32> = u_xlat1;
  let x_79 : vec3<f32> = (vec3<f32>(x_75.x, x_75.x, x_75.x) * vec3<f32>(x_77.x, x_77.y, x_77.z));
  let x_80 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_79.x, x_79.y, x_79.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat0;
  let x_84 : f32 = u_xlat6;
  let x_86 : vec3<f32> = (vec3<f32>(x_82.x, x_82.y, x_82.z) / vec3<f32>(x_84, x_84, x_84));
  let x_87 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
  let x_92 : vec4<f32> = vs_TEXCOORD4;
  let x_93 : vec2<f32> = vec2<f32>(x_92.x, x_92.y);
  let x_97 : f32 = vs_TEXCOORD4.z;
  txVec0 = vec3<f32>(x_93.x, x_93.y, x_97);
  let x_109 : vec3<f32> = txVec0;
  let x_112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_109.xy, x_109.z);
  u_xlat6 = x_112;
  let x_121 : f32 = x_118.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_121) + 1.0f);
  let x_126 : f32 = u_xlat6;
  let x_128 : f32 = x_118.x_MainLightShadowParams.x;
  let x_131 : f32 = u_xlat1.x;
  u_xlat6 = ((x_126 * x_128) + x_131);
  let x_137 : f32 = vs_TEXCOORD4.z;
  u_xlatb1 = (0.0f >= x_137);
  let x_141 : f32 = vs_TEXCOORD4.z;
  u_xlatb3 = (x_141 >= 1.0f);
  let x_143 : bool = u_xlatb3;
  let x_144 : bool = u_xlatb1;
  u_xlatb1 = (x_143 | x_144);
  let x_146 : bool = u_xlatb1;
  let x_147 : f32 = u_xlat6;
  u_xlat6 = select(x_147, 1.0f, x_146);
  let x_150 : vec4<f32> = vs_TEXCOORD3;
  let x_152 : f32 = u_xlat6;
  let x_155 : vec4<f32> = u_xlat0;
  let x_157 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(x_152, x_152, x_152)) + vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_158 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_166 : vec2<f32> = vs_TEXCOORD0;
  let x_168 : f32 = x_26.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_166, x_168);
  u_xlat1 = x_169;
  let x_170 : vec4<f32> = u_xlat1;
  let x_172 : vec4<f32> = u_xlat0;
  let x_178 : vec4<f32> = x_26.unity_FogColor;
  let x_181 : vec3<f32> = ((vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(x_172.x, x_172.y, x_172.z)) + -(vec3<f32>(x_178.x, x_178.y, x_178.z)));
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_187 : f32 = u_xlat1.w;
  SV_Target0.w = x_187;
  let x_191 : f32 = vs_TEXCOORD3.w;
  let x_193 : f32 = vs_TEXCOORD3.w;
  u_xlat6 = (x_191 * -(x_193));
  let x_196 : f32 = u_xlat6;
  u_xlat6 = exp2(x_196);
  let x_198 : f32 = u_xlat6;
  let x_200 : vec4<f32> = u_xlat0;
  let x_204 : vec4<f32> = x_26.unity_FogColor;
  let x_206 : vec3<f32> = ((vec3<f32>(x_198, x_198, x_198) * vec3<f32>(x_200.x, x_200.y, x_200.z)) + vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD5_param : vec4<f32>, @location(3) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

