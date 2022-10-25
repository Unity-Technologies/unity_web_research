struct PGlobals {
  x_ClipRect : vec4<f32>,
  x_MaskWipeControl : f32,
  x_MaskEdgeSoftness : f32,
  @size(8)
  padding : u32,
  x_MaskEdgeColor : vec4<f32>,
  x_MaskInverse : i32,
}

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

@group(0) @binding(1) var x_MaskTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MaskTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb8 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : i32 = x_13.x_MaskInverse;
  u_xlat0.x = select(0.0f, 1.0f, (x_17 != 0i));
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_46 : vec4<f32> = textureSample(x_MaskTex, sampler_MaskTex, vec2<f32>(x_44.z, x_44.w));
  u_xlat4.x = x_46.w;
  let x_51 : f32 = u_xlat4.x;
  let x_54 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_51) + x_54);
  let x_60 : f32 = x_13.x_MaskWipeControl;
  u_xlat4.x = (-(x_60) + 1.0f);
  let x_65 : f32 = u_xlat4.x;
  let x_68 : f32 = x_13.x_MaskEdgeSoftness;
  let x_71 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_65 * x_68) + abs(x_71));
  let x_76 : f32 = u_xlat0.x;
  let x_78 : f32 = x_13.x_MaskWipeControl;
  u_xlat0.x = (x_76 + -(x_78));
  let x_83 : f32 = u_xlat0.x;
  let x_85 : f32 = x_13.x_MaskEdgeSoftness;
  u_xlat0.x = (x_83 / x_85);
  let x_89 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_89, 0.0f, 1.0f);
  let x_94 : vec4<f32> = x_13.x_ClipRect;
  let x_98 : vec4<f32> = x_13.x_ClipRect;
  let x_100 : vec2<f32> = (-(vec2<f32>(x_94.x, x_94.y)) + vec2<f32>(x_98.z, x_98.w));
  let x_101 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_100.x, x_100.y, x_101.z);
  let x_103 : vec3<f32> = u_xlat4;
  let x_106 : vec4<f32> = vs_TEXCOORD2;
  let x_110 : vec2<f32> = (vec2<f32>(x_103.x, x_103.y) + -(abs(vec2<f32>(x_106.x, x_106.y))));
  let x_111 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_110.x, x_110.y, x_111.z);
  let x_113 : vec3<f32> = u_xlat4;
  let x_115 : vec4<f32> = vs_TEXCOORD2;
  let x_117 : vec2<f32> = (vec2<f32>(x_113.x, x_113.y) * vec2<f32>(x_115.z, x_115.w));
  let x_118 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_117.x, x_117.y, x_118.z);
  let x_120 : vec3<f32> = u_xlat4;
  let x_124 : vec2<f32> = clamp(vec2<f32>(x_120.x, x_120.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_125 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_124.x, x_124.y, x_125.z);
  let x_129 : f32 = u_xlat4.y;
  let x_131 : f32 = u_xlat4.x;
  u_xlat4.x = (x_129 * x_131);
  let x_140 : vec4<f32> = vs_TEXCOORD0;
  let x_142 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_140.x, x_140.y));
  u_xlat8 = x_142.w;
  let x_144 : f32 = u_xlat8;
  let x_148 : f32 = vs_TEXCOORD1.x;
  let x_151 : f32 = vs_TEXCOORD1.w;
  u_xlat8 = ((x_144 * x_148) + -(x_151));
  let x_154 : f32 = u_xlat8;
  u_xlat8 = clamp(x_154, 0.0f, 1.0f);
  let x_157 : f32 = u_xlat8;
  let x_160 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (vec4<f32>(x_157, x_157, x_157, x_157) * x_160);
  let x_164 : f32 = u_xlat4.x;
  let x_166 : f32 = u_xlat1.w;
  u_xlat2.w = (x_164 * x_166);
  let x_170 : vec4<f32> = u_xlat2;
  let x_174 : vec4<f32> = x_13.x_MaskEdgeColor;
  u_xlat3 = (vec3<f32>(x_170.w, x_170.w, x_170.w) * vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_178 : f32 = u_xlat2.w;
  let x_180 : f32 = u_xlat0.x;
  u_xlat8 = ((x_178 * x_180) + -0.001f);
  let x_186 : f32 = u_xlat8;
  u_xlatb8 = (x_186 < 0.0f);
  let x_188 : bool = u_xlatb8;
  if (((select(0i, 1i, x_188) * -1i) != 0i)) {
    discard;
  }
  let x_196 : vec4<f32> = u_xlat1;
  let x_198 : vec3<f32> = u_xlat4;
  let x_201 : vec3<f32> = u_xlat3;
  u_xlat4 = ((vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(x_198.x, x_198.x, x_198.x)) + -(x_201));
  let x_204 : vec4<f32> = u_xlat0;
  let x_206 : vec3<f32> = u_xlat4;
  let x_208 : vec3<f32> = u_xlat3;
  let x_209 : vec3<f32> = ((vec3<f32>(x_204.x, x_204.x, x_204.x) * x_206) + x_208);
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec4<f32> = u_xlat0;
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat0 = (vec4<f32>(x_212.x, x_212.x, x_212.x, x_212.x) * x_214);
  let x_218 : vec4<f32> = u_xlat0;
  SV_Target0 = x_218;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD2_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

