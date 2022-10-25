struct PGlobals {
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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : i32 = x_13.x_MaskInverse;
  u_xlat0.x = select(0.0f, 1.0f, (x_17 != 0i));
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_46 : vec4<f32> = textureSample(x_MaskTex, sampler_MaskTex, vec2<f32>(x_44.z, x_44.w));
  u_xlat3.x = x_46.w;
  let x_51 : f32 = u_xlat3.x;
  let x_54 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_51) + x_54);
  let x_59 : f32 = x_13.x_MaskWipeControl;
  u_xlat3.x = (-(x_59) + 1.0f);
  let x_64 : f32 = u_xlat3.x;
  let x_67 : f32 = x_13.x_MaskEdgeSoftness;
  let x_70 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_64 * x_67) + abs(x_70));
  let x_75 : f32 = u_xlat0.x;
  let x_77 : f32 = x_13.x_MaskWipeControl;
  u_xlat0.x = (x_75 + -(x_77));
  let x_82 : f32 = u_xlat0.x;
  let x_84 : f32 = x_13.x_MaskEdgeSoftness;
  u_xlat0.x = (x_82 / x_84);
  let x_88 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_88, 0.0f, 1.0f);
  let x_96 : vec4<f32> = vs_TEXCOORD0;
  let x_98 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_96.x, x_96.y));
  u_xlat3.x = x_98.w;
  let x_102 : f32 = u_xlat3.x;
  let x_106 : f32 = vs_TEXCOORD1.x;
  let x_109 : f32 = vs_TEXCOORD1.w;
  u_xlat3.x = ((x_102 * x_106) + -(x_109));
  let x_114 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_114, 0.0f, 1.0f);
  let x_119 : f32 = u_xlat3.x;
  let x_122 : f32 = vs_COLOR0.w;
  u_xlat1.w = (x_119 * x_122);
  let x_126 : vec4<f32> = u_xlat1;
  let x_131 : vec4<f32> = x_13.x_MaskEdgeColor;
  u_xlat2 = (vec3<f32>(x_126.w, x_126.w, x_126.w) * vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_136 : f32 = u_xlat1.w;
  let x_138 : f32 = u_xlat0.x;
  u_xlat6 = ((x_136 * x_138) + -0.001f);
  let x_144 : f32 = u_xlat6;
  u_xlatb6 = (x_144 < 0.0f);
  let x_146 : bool = u_xlatb6;
  if (((select(0i, 1i, x_146) * -1i) != 0i)) {
    discard;
  }
  let x_154 : vec4<f32> = vs_COLOR0;
  let x_156 : vec3<f32> = u_xlat3;
  let x_159 : vec3<f32> = u_xlat2;
  u_xlat3 = ((vec3<f32>(x_154.x, x_154.y, x_154.z) * vec3<f32>(x_156.x, x_156.x, x_156.x)) + -(x_159));
  let x_162 : vec4<f32> = u_xlat0;
  let x_164 : vec3<f32> = u_xlat3;
  let x_166 : vec3<f32> = u_xlat2;
  let x_167 : vec3<f32> = ((vec3<f32>(x_162.x, x_162.x, x_162.x) * x_164) + x_166);
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat0;
  let x_172 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec4<f32>(x_170.x, x_170.x, x_170.x, x_170.x) * x_172);
  let x_176 : vec4<f32> = u_xlat0;
  SV_Target0 = x_176;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

