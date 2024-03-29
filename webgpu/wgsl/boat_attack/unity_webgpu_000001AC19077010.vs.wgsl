diagnostic(off, derivative_uniformity);

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4<f32>,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4<f32>,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4<f32>,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4<f32>,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4<f32>,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4<f32>,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4<f32>,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4<f32>,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4<f32>,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4<f32>,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4<f32>,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4<f32>,
  /* @offset(240) */
  x_Control_ST : vec4<f32>,
  /* @offset(256) */
  x_Control_TexelSize : vec4<f32>,
  /* @offset(272) */
  x_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  x_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  x_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  x_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4<f32>,
  /* @offset(320) */
  x_Splat1_ST : vec4<f32>,
  /* @offset(336) */
  x_Splat2_ST : vec4<f32>,
  /* @offset(352) */
  x_Splat3_ST : vec4<f32>,
  /* @offset(368) */
  x_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
}

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_24 : x_Terrain;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> phase0_Output0_3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_91 : VGlobals;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = in_TEXCOORD0;
  let x_14 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_13.x, x_13.y, x_14.z, x_14.w);
  let x_18 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_18.x, x_18.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  let x_21 : vec2<f32> = in_TEXCOORD0;
  let x_29 : vec4<f32> = x_24.x_Splat0_ST;
  let x_33 : vec4<f32> = x_24.x_Splat0_ST;
  let x_35 : vec2<f32> = ((x_21 * vec2<f32>(x_29.x, x_29.y)) + vec2<f32>(x_33.z, x_33.w));
  let x_36 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_35.x, x_35.y, x_36.z, x_36.w);
  let x_38 : vec2<f32> = in_TEXCOORD0;
  let x_41 : vec4<f32> = x_24.x_Splat1_ST;
  let x_45 : vec4<f32> = x_24.x_Splat1_ST;
  let x_47 : vec2<f32> = ((x_38 * vec2<f32>(x_41.x, x_41.y)) + vec2<f32>(x_45.z, x_45.w));
  let x_48 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_48.x, x_48.y, x_47.x, x_47.y);
  let x_51 : vec2<f32> = in_TEXCOORD0;
  let x_54 : vec4<f32> = x_24.x_Splat2_ST;
  let x_58 : vec4<f32> = x_24.x_Splat2_ST;
  let x_60 : vec2<f32> = ((x_51 * vec2<f32>(x_54.x, x_54.y)) + vec2<f32>(x_58.z, x_58.w));
  let x_61 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_60.x, x_60.y, x_61.z, x_61.w);
  let x_63 : vec2<f32> = in_TEXCOORD0;
  let x_66 : vec4<f32> = x_24.x_Splat3_ST;
  let x_70 : vec4<f32> = x_24.x_Splat3_ST;
  let x_72 : vec2<f32> = ((x_63 * vec2<f32>(x_66.x, x_66.y)) + vec2<f32>(x_70.z, x_70.w));
  let x_73 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_73.x, x_73.y, x_72.x, x_72.y);
  phase0_Output0_3 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD4 = vec3<f32>(0.0f, 0.0f, 0.0f);
  vs_TEXCOORD7 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_86 : vec4<f32> = in_POSITION0;
  let x_95 : vec4<f32> = x_91.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_86.y, x_86.y, x_86.y, x_86.y) * x_95);
  let x_98 : vec4<f32> = x_91.unity_MatrixVP[0i];
  let x_99 : vec4<f32> = in_POSITION0;
  let x_102 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_98 * vec4<f32>(x_99.x, x_99.x, x_99.x, x_99.x)) + x_102);
  let x_106 : vec4<f32> = x_91.unity_MatrixVP[2i];
  let x_107 : vec4<f32> = in_POSITION0;
  let x_110 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_106 * vec4<f32>(x_107.z, x_107.z, x_107.z, x_107.z)) + x_110);
  let x_118 : vec4<f32> = u_xlat0;
  let x_121 : vec4<f32> = x_91.unity_MatrixVP[3i];
  gl_Position = (x_118 + x_121);
  let x_125 : vec4<f32> = phase0_Output0_3;
  vs_TEXCOORD3 = vec3<f32>(x_125.x, x_125.y, x_125.z);
  let x_131 : f32 = phase0_Output0_3.w;
  vs_TEXCOORD6 = x_131;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, gl_Position);
}


