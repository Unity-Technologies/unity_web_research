struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
  x_Color : vec4<f32>,
  x_DstBlend : i32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_34 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD0 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var u_xlat9 : f32;
  var u_xlatb9 : bool;
  var x_182 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_28 : vec4<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_34.x_Color;
  u_xlat1 = ((-(vec3<f32>(x_28.x, x_28.y, x_28.z)) * vec3<f32>(x_38.x, x_38.y, x_38.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_44 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_34.x_Color;
  u_xlat0 = (x_44 * x_46);
  let x_48 : vec3<f32> = u_xlat1;
  let x_49 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_48 + x_49);
  let x_54 : vec4<f32> = vs_COLOR0;
  u_xlat2 = (-(vec3<f32>(x_54.x, x_54.y, x_54.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_58 : vec3<f32> = u_xlat1;
  let x_60 : vec3<f32> = u_xlat2;
  u_xlat1 = ((-(x_58) * x_60) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_63 : vec4<f32> = u_xlat0;
  let x_65 : vec4<f32> = vs_COLOR0;
  u_xlat2 = (vec3<f32>(x_63.x, x_63.y, x_63.z) * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_68 : vec3<f32> = u_xlat2;
  let x_72 : vec3<f32> = u_xlat1;
  u_xlat2 = ((x_68 * vec3<f32>(2.0f, 2.0f, 2.0f)) + -(x_72));
  let x_82 : vec4<f32> = u_xlat0;
  let x_85 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_82.x, x_82.y, x_82.z, x_82.x));
  u_xlatb0 = vec3<bool>(x_85.x, x_85.y, x_85.z);
  let x_93 : f32 = u_xlat0.w;
  let x_96 : f32 = vs_COLOR0.w;
  SV_Target0.w = (x_93 * x_96);
  let x_103 : bool = u_xlatb0.x;
  u_xlat0.x = select(0.0f, 1.0f, x_103);
  let x_108 : bool = u_xlatb0.y;
  u_xlat0.y = select(0.0f, 1.0f, x_108);
  let x_113 : bool = u_xlatb0.z;
  u_xlat0.z = select(0.0f, 1.0f, x_113);
  let x_116 : vec4<f32> = u_xlat0;
  let x_118 : vec3<f32> = u_xlat2;
  let x_120 : vec3<f32> = u_xlat1;
  let x_121 : vec3<f32> = ((vec3<f32>(x_116.x, x_116.y, x_116.z) * x_118) + x_120);
  let x_122 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = x_34.unity_FogColor;
  u_xlat1 = (vec3<f32>(x_124.x, x_124.y, x_124.z) + -(vec3<f32>(x_128.x, x_128.y, x_128.z)));
  let x_134 : f32 = vs_TEXCOORD0;
  let x_138 : f32 = x_34.x_ProjectionParams.y;
  u_xlat9 = (x_134 / x_138);
  let x_140 : f32 = u_xlat9;
  u_xlat9 = (-(x_140) + 1.0f);
  let x_143 : f32 = u_xlat9;
  let x_145 : f32 = x_34.x_ProjectionParams.z;
  u_xlat9 = (x_143 * x_145);
  let x_147 : f32 = u_xlat9;
  u_xlat9 = max(x_147, 0.0f);
  let x_149 : f32 = u_xlat9;
  let x_152 : f32 = x_34.unity_FogParams.x;
  u_xlat9 = (x_149 * x_152);
  let x_154 : f32 = u_xlat9;
  let x_155 : f32 = u_xlat9;
  u_xlat9 = (x_154 * -(x_155));
  let x_158 : f32 = u_xlat9;
  u_xlat9 = exp2(x_158);
  let x_160 : f32 = u_xlat9;
  let x_162 : vec3<f32> = u_xlat1;
  let x_165 : vec4<f32> = x_34.unity_FogColor;
  u_xlat1 = ((vec3<f32>(x_160, x_160, x_160) * x_162) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat0;
  let x_170 : f32 = u_xlat9;
  let x_172 : vec3<f32> = (vec3<f32>(x_168.x, x_168.y, x_168.z) * vec3<f32>(x_170, x_170, x_170));
  let x_173 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_179 : i32 = x_34.x_DstBlend;
  u_xlatb9 = (x_179 == 1i);
  let x_181 : bool = u_xlatb9;
  if (x_181) {
    let x_185 : vec4<f32> = u_xlat0;
    x_182 = vec3<f32>(x_185.x, x_185.y, x_185.z);
  } else {
    let x_188 : vec3<f32> = u_xlat1;
    x_182 = x_188;
  }
  let x_189 : vec3<f32> = x_182;
  let x_190 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

